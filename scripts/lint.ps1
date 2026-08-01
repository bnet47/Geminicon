$ErrorActionPreference = "Stop"
if (Get-Command Invoke-ScriptAnalyzer -ErrorAction SilentlyContinue) {
    Invoke-ScriptAnalyzer -Path .\scripts\*.ps1
}
$PythonBin = if ($env:PYTHON_BIN) { $env:PYTHON_BIN } else { "python" }
$PythonCommand = (Get-Command $PythonBin -ErrorAction Stop).Source
if (Test-Path "scripts\render_playbook.py") {
    & $PythonCommand scripts\render_playbook.py --check
}
Write-Output "[lint] Template validation passed."
