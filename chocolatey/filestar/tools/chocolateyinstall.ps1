# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.5.0.0/Filestar.30.5.0.0.win-x86.exe'
  checksum       = '99478e2bd98a6a77ee017be4a63cb01c4bf380dd1fe40e528e6691fdec9130a0'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.5.0.0/Filestar.30.5.0.0.win-x64.exe'
  checksum64     = 'da19ffd16171ea3eee0a3c892de6cf22cc20c16a7da70ca22b95ea9c70c72548'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
