$pathToJpg=("{0}{1}" -f (Get-Location),"\.hoff.jpg")
Invoke-WebRequest "https://i.imgur.com/4VdAwU5.jpg" -OutFile $pathToJpg
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d $pathToJpg /f
For($i=0;$i -le 100;$i++){rundll32.exe user32.dll,UpdatePerUserSystemParameters}
Start-Process powershell -ArgumentList "sleep 1;rundll32.exe user32.dll,LockWorkStation" -WindowStyle Hidden
Exit
