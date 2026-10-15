# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.5.0/Filestar.30.1.5.0.win-x86.exe'
  checksum       = '8f17ed609e3ad12db7d62f4c840dbc6ae374a09f7ab1d001211266406e7dbf2b'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.5.0/Filestar.30.1.5.0.win-x64.exe'
  checksum64     = '14dee7b57d80af2fcb5322dce9abcb80e35bb4a5163e356d9f3734539cfa2f18'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
