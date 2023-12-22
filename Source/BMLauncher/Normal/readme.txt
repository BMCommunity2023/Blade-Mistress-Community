This file holds the information on how to launch the game.



1) How to launch the game:

Double click "Launcher_general.bat"
The game client starts, fill in your login credentials and hit "Enter".




2) Launch the game without the need to typing in the credentials each time:

Edit the File "Launcher_Client2.bat" in a Text Editor, it will show the line:

start BBonline.exe -w -y -nClient2 -p123456 -93.83.42.178

In this examplary line, the login credentials are "Client2" for the user and "123456" for the password.
Alter these two entries to your corresponding login credentials, but make sure to keep -n before the username and -p before the password.
When done, click "File --> Save As" and choose a proper Filename, make sure the extension is .bat

These Launcher-Batch Files must be within the same directory as BBonline.exe




3) Alternative Launcher Method:
You can also create shortcuts to BBonline.exe from any directory, follow the guide:
http://www.bmreborn.com/phpBB3/viewtopic.php?f=4&t=12

However when following this guide, use -93.83.42.178 instead of -83.84.149.96 respectively -bmonline.servegame.com
Example: "C:\Users\Torrie\Desktop\BM_Client\BBonline.exe" -w -x -nUSERNAME -pPASSWORD -93.83.42.178




NOTE: It has been reported that game sounds might not work properly when using method 2)