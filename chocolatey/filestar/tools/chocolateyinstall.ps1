# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.3.0/Filestar.30.1.3.0.win-x86.exe'
  checksum       = '9e63ae155c43e482ef801638d5c871376fb59d17d6d5348b4801dca8a7e891f5'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.3.0/Filestar.30.1.3.0.win-x64.exe'
  checksum64     = '783b8cdc4b4a8b41782ba7612948d69db02331f70a57f716c9d29fc455493e03'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
