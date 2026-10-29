# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.5.1.0/Filestar.30.5.1.0.win-x86.exe'
  checksum       = '6576b6553cbbcb73874f913c8a53b644d92df97c33d6e489d6595be295e25f60'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.5.1.0/Filestar.30.5.1.0.win-x64.exe'
  checksum64     = 'e90afa2ff0950a79d05d9806bfda740cbce1dbb8ce0e48cff3e430f706f95007'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
