# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.8.0.0/Filestar.30.8.0.0.win-x86.exe'
  checksum       = '6ef6581876fa6a124d6dff7cc63f99a4cf7d143591cf535d190b7ae47c956e46'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.8.0.0/Filestar.30.8.0.0.win-x64.exe'
  checksum64     = '1a0fb05501b0dbb79732fe43d254b3c2a98e4c6a33ed5354be78041d48c92843'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
