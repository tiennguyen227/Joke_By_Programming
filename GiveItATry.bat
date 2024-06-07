@echo off

IF EXIST "msgbox.vbs" (
    del msgbox.vbs
)

@echo Dim EvilLoop : EvilLoop = 0 >> msgbox.vbs
@echo For index = 0 to EvilLoop Step 1 >> msgbox.vbs
@echo MsgBox "Hah Hah Hah !" ,16, "You got RickRoll" >> msgbox.vbs
@echo Next >> msgbox.vbs

:: Prompt user got rickroll trolling and open music :v
call msgbox.vbs && start Resource\NeverGonnaGiveYouUp.mp3

@echo off

:: Commands to change wallpaper to RickRoll
echo Changing wallpaper to RickRoll
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %~dp0Resource\RickRoll.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters