# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.1.0/Filestar.30.1.1.0.win-x86.exe'
  checksum       = '7f9c0b3f95365be1ddf04c3b0a8b109cffb2efbedfb8671f427ded954e5d13ac'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.1.0/Filestar.30.1.1.0.win-x64.exe'
  checksum64     = '09e414b533eecf42a77c08bf081d53e4354727e64003c6551c8795aa14729a38'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
