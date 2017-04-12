-- SWTORLaunch (AppleScript app) Launches SWTOR 5.1.3 in Wine 2 on LSBs. E.g, FreeBSD  
-- Kudos to author @aljen for getting SWTOR running on OS X 10.10: swtor_fix.exe, instructions & bash commands
-- Last Updated: 12/04/17 Author: @poyntz
-- For a nicer icon check out Star Wars Icon by VitalKillGaming (http://bit.ly/2oqFf40)

tell application "Terminal" to activate

delay 2

tell application "System Events" to tell process "Terminal" to keystroke "t" using command down

tell application "Terminal"
	
	delay 0.25
	
	do script "WINEDEBUG=-all wine ~/.wine/drive_c/swtor_fix.exe" in front window
	
	delay 2
	
	tell application "Terminal" to activate
	
	tell application "System Events" to tell process "Terminal" to keystroke "t" using command down
	
	tell application "Terminal"
		
		delay 0.25
		
		do script "WINEDEBUG=-all wine ~/.wine/drive_c/Program\\ Files/Electronic\\ Arts/BioWare/Star\\ Wars\\ -\\ The\\ Old\\ Republic/launcher.exe" in front window
		
	end tell
end tell
