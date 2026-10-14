# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.4.0/Filestar.30.1.4.0.win-x86.exe'
  checksum       = '4057a31a86ccc91be087a124e0377af7541d614f73d9f494e0946c1b8c1cb8cf'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.4.0/Filestar.30.1.4.0.win-x64.exe'
  checksum64     = 'a5fa435d53f978c3bb0204038f5b2dfb7576d923fec84a65c32c14c398d880ca'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
