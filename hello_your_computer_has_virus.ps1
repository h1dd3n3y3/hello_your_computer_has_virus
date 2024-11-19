$player = New-Object System.Media.SoundPlayer

$wavUri = 'https://github.com/h1dd3n3y3/hello_your_computer_has_virus/raw/refs/heads/main/Hello_Your_Computer_Has_Virus.wav'

Invoke-WebRequest -Uri $wavUri -OutFile $env:TEMP

$wavFile = $env:TEMP + '\Hello_Your_Computer_Has_Virus.wav'

$player.SoundLocation = $wavFile
$player.Load()

$player.PlaySync()

Remove-Item -Path $wavFile