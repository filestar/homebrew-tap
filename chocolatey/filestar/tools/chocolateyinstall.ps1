# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.7.1.0/Filestar.30.7.1.0.win-x86.exe'
  checksum       = 'fa43c2ef60a747d743e6db048e8cd8842ddb779690d4943ca7311b5dc23bdad7'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.7.1.0/Filestar.30.7.1.0.win-x64.exe'
  checksum64     = '91ef47e114ab6ecbf39e391f0e4d044192bdaae0c0f96fe0e97b6e14786cd482'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
