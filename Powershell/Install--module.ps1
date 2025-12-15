# ============================
# PowerShell Module Bootstrap
# Version-locked, run-once
# ============================

$ErrorActionPreference = "Stop"

# Ensure PSGallery is trusted
if ((Get-PSRepository -Name PSGallery).InstallationPolicy -ne "Trusted") {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
}

# Ensure NuGet provider exists
if (-not (Get-PackageProvider -Name NuGet -ErrorAction SilentlyContinue)) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
}

$modules = @(
    @{ Name = "Microsoft.WinGet.Client"; Version = "1.11.460" }
    @{ Name = "Microsoft.WinGet.CommandNotFound"; Version = "1.0.5.0" }
    @{ Name = "posh-git"; Version = "1.1.0" }
    @{ Name = "Terminal-Icons"; Version = "0.11.0" }
)

foreach ($module in $modules) {
    $installed = Get-InstalledModule `
        -Name $module.Name `
        -RequiredVersion $module.Version `
        -ErrorAction SilentlyContinue

    if ($installed) {
        Write-Host "✔ $($module.Name) $($module.Version) already installed" -ForegroundColor Green
    }
    else {
        Write-Host "⬇ Installing $($module.Name) $($module.Version)" -ForegroundColor Cyan
        Install-Module `
            -Name $module.Name `
            -RequiredVersion $module.Version `
            -Repository PSGallery `
            -Scope CurrentUser `
            -Force `
            -AllowClobber
    }
}

Write-Host "`nAll modules locked & installed. System is clean. 😤✨" -ForegroundColor Magenta
