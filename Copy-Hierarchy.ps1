# C:\scripts\Copy-Hierarchy.ps1 E:\muzică C:\Users\victor\SkyDrive\booklets .mobi,.epub,.pdf

Param([string]$Source, [string]$Destination, [string[]]$Extensions)

Push-Location $Source

Get-ChildItem . -Recurse |
Where-Object {
    $extensions -contains $_.Extension
} |
ForEach-Object {
    $sourcePath = Resolve-Path $_.FullName -relative
    $destPath = Join-Path $Destination (Split-Path $sourcePath)
    if (-not (Test-Path $destPath)) {
        New-Item $destPath -ItemType directory
    }
    Copy-Item $sourcePath $destPath
}

Pop-Location
