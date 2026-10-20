# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.7.0/Filestar.30.1.7.0.win-x86.exe'
  checksum       = '8dcc520f1aabb35026ca8f2e4164244a4bdf8323967eb9530f27f810cbfbea0c'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.7.0/Filestar.30.1.7.0.win-x64.exe'
  checksum64     = 'c5a9c8450f0502f5b4984ea412ccd0017fee3bcca592fc222b813086f822070f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
