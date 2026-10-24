# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.3.0.0/Filestar.30.3.0.0.win-x86.exe'
  checksum       = 'db15cebf94274fbff0680710411b2d2431a52655d7e774e2ebcf680285951969'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.3.0.0/Filestar.30.3.0.0.win-x64.exe'
  checksum64     = '2e32f8b4221431c9253e9f3621483aef4c71724ec21a27af61cec0877974ede0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
