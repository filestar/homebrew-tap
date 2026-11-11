# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.7.2.0/Filestar.30.7.2.0.win-x86.exe'
  checksum       = 'e2ea77d6a7aa4d2368143acc680cddffe830e075803e07d2f215b14298f327d3'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.7.2.0/Filestar.30.7.2.0.win-x64.exe'
  checksum64     = 'fa6578c7c034a3d7a632085e1ec6f2661c1f7f699da9c48a536434ba0ef66420'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
