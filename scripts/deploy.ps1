$ErrorActionPreference = "Stop"
$target = $args[0]

if ($target -ne "staging" -and $target -ne "prod") {
    Write-Error "usage: .\scripts\deploy.ps1 [staging|prod]"
}

if ($target -eq "prod" -and $env:DEPLOY_APPROVED -ne "true") {
    Write-Error "[deploy] Production deployment requires DEPLOY_APPROVED=true."
}

Write-Error "[deploy] No deployment target is configured; refusing to report success.`n[deploy] Configure this script from current provider documentation before deployment."
