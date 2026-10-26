# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.4.0.0/Filestar.30.4.0.0.win-x86.exe'
  checksum       = 'c9218af8be49bf130cf4780377effdaa71268f17e207a4e553786b4c1a381f19'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.4.0.0/Filestar.30.4.0.0.win-x64.exe'
  checksum64     = 'f2328fb603d290385bcf8dc7b91bc57c8be4ec7855e26822f2f551c6f84c1b9f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
