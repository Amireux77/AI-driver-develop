#Requires -Version 5.1
<#
.SYNOPSIS
  生成 Xugu 主测 SQL 脚本骨架。INSERT/UPDATE 为单场景 DML；INTERVAL 可选 13 变体。

.EXAMPLE
  .\tools\new-sql-script.ps1 -Topic INSERT -FileNum 01 -FileSlug Val -DomainCode VAL -Seq 001 -Title "单行 VALUES 全列插入"

.EXAMPLE
  .\tools\new-sql-script.ps1 -Topic INTERVAL -FileNum 06 -FileSlug Index -DomainCode INDEX -Seq 001 -Title "索引创建和验证" -VariantCount 13
#>
param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('INSERT', 'UPDATE', 'INTERVAL')]
    [string]$Topic,

    [Parameter(Mandatory = $true)]
    [ValidatePattern('^\d{2}$')]
    [string]$FileNum,

    [Parameter(Mandatory = $true)]
    [string]$FileSlug,

    [Parameter(Mandatory = $true)]
    [string]$DomainCode,

    [Parameter(Mandatory = $true)]
    [ValidatePattern('^\d{3}$')]
    [string]$Seq,

    [Parameter(Mandatory = $true)]
    [string]$Title,

    [int]$VariantCount = 0,

    [ValidateSet('implemented', 'gap')]
    [string]$Scope = 'implemented',

    [switch]$Append
)

$ErrorActionPreference = 'Stop'
$isInterval = ($Topic -eq 'INTERVAL')

if (-not $isInterval -and $VariantCount -gt 0) {
    Write-Error "INSERT/UPDATE 只测语句场景，不支持 -VariantCount。多表 13 变体仅用于 INTERVAL 主题。"
}

if ($isInterval -and $VariantCount -eq 0) {
    Write-Host "[提示] INTERVAL 类型测试常用 -VariantCount 13；当前为单表骨架，可按 INTERVAL-04 自行扩展。"
}

$topicTag = switch ($Topic) {
    'INSERT' { 'ins' }
    'UPDATE' { 'upd' }
    'INTERVAL' { 'table' }
}
$domainTag = ($DomainCode.ToLower() -replace '[^a-z0-9]', '')
$tableBase = if ($isInterval) { 't_table' } else { "t_${topicTag}_${domainTag}" }
$tableSeq = $Seq

$Root = Split-Path -Parent $PSScriptRoot
$DirName = "${Topic}_TYPE"
$ScriptDir = Join-Path $Root "scripts\$DirName\$Scope"
$FileName = "$FileNum-$FileSlug.sql"
$OutPath = Join-Path $ScriptDir $FileName

if (-not (Test-Path $ScriptDir)) {
    New-Item -ItemType Directory -Path $ScriptDir -Force | Out-Null
    Write-Host "[INFO] 已创建目录: $ScriptDir"
}

$caseId = "XG-TYPE-$Topic-$DomainCode-$Seq"
$header = "!4 $caseId $Title"

function Get-VariantSuffix([int]$index, [int]$total) {
    if ($total -le 1) { return '' }
    return [char]([int][char]'a' + $index)
}

function Build-DmlBody {
    param([string]$TableName)
    if ($Topic -eq 'UPDATE') {
        @(
            "CREATE TABLE $TableName (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));"
            ''
            "INSERT INTO $TableName VALUES (1 , 'seed' , 'ACTIVE');"
            ''
            "UPDATE $TableName SET val = 'ok' WHERE id = 1;"
            ''
            '<预期结果 : ok>'
            "SELECT val FROM $TableName WHERE id = 1;"
            ''
            "DROP TABLE $TableName;"
        ) -join "`r`n"
    } else {
        @(
            "CREATE TABLE $TableName (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));"
            ''
            "INSERT INTO $TableName VALUES (1 , 'ok' , 'ACTIVE');"
            ''
            '<预期结果 : ok>'
            "SELECT val FROM $TableName WHERE id = 1;"
            ''
            "DROP TABLE $TableName;"
        ) -join "`r`n"
    }
}

function Build-IntervalBody([int]$variants) {
    $lines = New-Object System.Collections.Generic.List[string]
    $n = [Math]::Max(1, $variants)
    for ($i = 0; $i -lt $n; $i++) {
        $s = Get-VariantSuffix $i $n
        $lines.Add("CREATE TABLE ${tableBase}_${tableSeq}${s} (id INT PRIMARY KEY , c1 INTERVAL YEAR , c2 INTERVAL YEAR , status VARCHAR(10));")
    }
    $lines.Add('')
    for ($i = 0; $i -lt $n; $i++) {
        $s = Get-VariantSuffix $i $n
        $lines.Add("INSERT INTO ${tableBase}_${tableSeq}${s} VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'CLOSED');")
    }
    $lines.Add('')
    for ($i = 0; $i -lt $n; $i++) {
        $s = Get-VariantSuffix $i $n
        $lines.Add('<预期结果 : TODO | 填写期望列>')
        $lines.Add("SELECT * FROM ${tableBase}_${tableSeq}${s} WHERE id = 1;")
        if ($i -lt ($n - 1)) { $lines.Add('') }
    }
    $lines.Add('')
    for ($i = 0; $i -lt $n; $i++) {
        $s = Get-VariantSuffix $i $n
        $lines.Add("DROP TABLE ${tableBase}_${tableSeq}${s};")
    }
    return ($lines -join "`r`n")
}

if ($isInterval) {
    $variants = if ($VariantCount -gt 0) { $VariantCount } else { 1 }
    $body = Build-IntervalBody $variants
} else {
    $tableName = "${tableBase}_${tableSeq}"
    $body = Build-DmlBody $tableName
}

$block = "$header`r`n$body`r`n"

if ($Append -and (Test-Path $OutPath)) {
    $existing = Get-Content -LiteralPath $OutPath -Raw -Encoding UTF8
    if ($existing -match [regex]::Escape($caseId)) {
        Write-Error "用例 $caseId 已存在于 $OutPath，请勿重复追加。"
    }
    Add-Content -LiteralPath $OutPath -Value "`r`n$block" -Encoding UTF8
    Write-Host "[OK] 已追加用例到: $OutPath"
} elseif ((Test-Path $OutPath) -and -not $Append) {
    Write-Error "文件已存在: $OutPath`n请加 -Append 追加用例，或换 FileNum/FileSlug/Seq。"
} else {
    $utf8Bom = New-Object System.Text.UTF8Encoding $true
    [System.IO.File]::WriteAllText($OutPath, $block, $utf8Bom)
    Write-Host "[OK] 已生成: $OutPath"
}

$docHint = switch ($Topic) {
    'INSERT' { 'docs/insert/INSERT-04-用例设计.md' }
    'UPDATE' { 'docs/update/UPDATE-04-用例设计.md' }
    'INTERVAL' { 'docs/interval/INTERVAL-04-用例设计.md' }
}

Write-Host ""
Write-Host "用例编号: $caseId"
$scopeLabel = if ($Scope -eq 'implemented') { '已实现 / 基准' } else { '缺口 / 待实现' }
$modeLabel = if ($isInterval) { 'INTERVAL 类型（可多变体）' } else { "DML 单场景（仅测 $Topic 能力）" }
Write-Host "范围: $scopeLabel -> scripts/$DirName/$Scope/"
Write-Host "模式: $modeLabel"
Write-Host "下一步:"
Write-Host "  1. 编辑 SQL 与 <预期结果>"
Write-Host "  2. 在 $docHint 登记脚本路径"
Write-Host "  3. 规范见 docs/meta/SQL_SCRIPT_STYLE.md ( implemented / gap )"
