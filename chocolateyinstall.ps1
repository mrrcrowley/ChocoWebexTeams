$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.webex.com/downloads/WebexTeams.msi' 
$url64      = 'https://www.webex.com/downloads/WebexTeams.msi' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'WebexTeams*'
  checksum      = 'F3EAE1B3FD4E6CA83BBB12D0A39B0D2FA73B88AA7E53612A881D54C9FA9FD5B2'
  checksumType  = 'sha256'
  checksum64    = 'F3EAE1B3FD4E6CA83BBB12D0A39B0D2FA73B88AA7E53612A881D54C9FA9FD5B2'
  checksumType64= 'sha256'

  silentArgs    = 'INSTALLFOLDER="C:\Program Files" ALLUSERS=1 /quiet /qn'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs 
