$archiveName = ".\ark.7z"

if (Test-Path $archiveName)
{
    Remove-Item $archiveName
}
Copy-Item ..\packages\**\*.nupkg -Destination .\NugetDump
# Change this if running at work:
# & 'D:\Program Files (D drive)\7-Zip\7z.exe' a $archiveName .\NugetDump\*.nupkg
Write-Host "Done"