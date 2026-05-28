#Requires -Version 5.1
# UTF-8 console output wrapper (ASCII-only file; invoked from .bat)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [Console]::OutputEncoding

if ($args.Count -lt 1) {
    Write-Error "Usage: run-ps-utf8.ps1 <script.ps1> [args...]"
    exit 1
}

$scriptPath = $args[0]
$scriptArgs = @()
if ($args.Count -gt 1) {
    $scriptArgs = $args[1..($args.Count - 1)]
}

& $scriptPath @scriptArgs
exit $LASTEXITCODE
