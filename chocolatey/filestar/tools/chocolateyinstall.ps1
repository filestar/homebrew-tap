# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.2.0.0/Filestar.30.2.0.0.win-x86.exe'
  checksum       = '488e6660ce3f0169b04e973135d832421b6f939a8dd922a1c05ce1025e426ec8'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.2.0.0/Filestar.30.2.0.0.win-x64.exe'
  checksum64     = '642b3a85ecdde327fc54f5bc7a51c84e7318ada8f4dde15bc0a9c3f9abe01455'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
