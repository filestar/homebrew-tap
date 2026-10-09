# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.0.0.0/Filestar.30.0.0.0.win-x86.exe'
  checksum       = '4bf4eaf53e5389436c17cd76178208c765ad709d6c5f827db099854b0e7499df'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.0.0.0/Filestar.30.0.0.0.win-x64.exe'
  checksum64     = 'ff8d1c7ac495ed91ce879dc79005988c802372e7977171df8a3f280c372bf9d3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
