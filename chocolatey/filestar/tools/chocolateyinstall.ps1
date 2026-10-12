# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.2.0/Filestar.30.1.2.0.win-x86.exe'
  checksum       = '99c54da8ada246d5632087d96777681e0bf05f9168744dca43ea74a559fc7f4a'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.2.0/Filestar.30.1.2.0.win-x64.exe'
  checksum64     = 'c0f7ff7d9ee6e1a70d75da3d7d94340822234c54a010396b688070b590281e52'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
