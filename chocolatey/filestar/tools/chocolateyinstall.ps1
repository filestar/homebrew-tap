# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.9.0.0/Filestar.30.9.0.0.win-x86.exe'
  checksum       = '5080854adc5e79046f456337ad71343b39bf3aa4abff7bec635d40a9c385cb9e'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.9.0.0/Filestar.30.9.0.0.win-x64.exe'
  checksum64     = '68b1a106f56e30e0378f09851a5c0eef75d4ecd65966492ec63f19ba7ef8ab3a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
