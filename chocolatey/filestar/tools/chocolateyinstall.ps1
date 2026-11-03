# Created by ftools channels (Bosma Interactive AB). Downloads the signed installer from
# release.filestar.com, checks its sha256 and installs it silently for all users.
$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://release.filestar.com/releases/30.6.0.0/Filestar.30.6.0.0.win-x86.exe'
  checksum       = 'f788fc93ec5d6592072ecb083efc5ff5b810a3c613e149bb0fb8ae54c27fb1ba'
  checksumType   = 'sha256'
  url64bit       = 'https://release.filestar.com/releases/30.6.0.0/Filestar.30.6.0.0.win-x64.exe'
  checksum64     = '093c2f414d8d065d601ad740148bbe04181c704b89a619a9a962396ad8eb2bbc'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /channel=chocolatey'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
