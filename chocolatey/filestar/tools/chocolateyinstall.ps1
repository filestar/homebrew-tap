# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.1.0.0/Filestar.30.1.0.0.win-x86.exe'
  checksum       = '791eecb808a99eaa06ec4c0fc603aa137d96a536cc62d7db1439ebace6599283'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.1.0.0/Filestar.30.1.0.0.win-x64.exe'
  checksum64     = '023cb3546d6f09e50c53ec185328b7182f7c7cfc998621601f2a3e5ab30efdbd'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
