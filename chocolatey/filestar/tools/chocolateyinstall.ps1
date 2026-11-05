# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.7.0.0/Filestar.30.7.0.0.win-x86.exe'
  checksum       = 'c52e37674eb0706bab3d819a54b75f4a60b002a16e84435ddefafb1f8ce7eb85'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.7.0.0/Filestar.30.7.0.0.win-x64.exe'
  checksum64     = 'f44c595818234e8cc3973f5a3442832d4904fca42136526f840918c4053fb1ce'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
