$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$packageArgs = @{
  packageName    = 'school-report-maker'
  fileType       = 'msi'
  url            = 'https://github.com/asiimwe3/school-report-maker/releases/download/v2.4.31/SchoolReportMaker-2.3.28.msi'
  checksum       = '84a1e3957f13bc9a11641b14aa086e0a3981b4ad14469f44eee8660868b78319'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
