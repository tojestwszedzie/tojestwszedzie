@echo off
	:BEG
	cls
	echo ***MENU***
	echo.
	echo 1. Strona szkoly
	echo 2. Notatnik
	echo 3. Kalkulator
	echo 4. yes
	echo 5. Koniec
	echo 5. jakieś %
	
	choice /c:123456
	if errorlevel 5 goto end
	if errorlevel 4 goto yes
	if errorlevel 3 goto calc
	if errorlevel 2 goto note
	if errorlevel 1 goto www
	if errorlevel 6 goto jakieś%
	goto BEG
	:calc
	start calc
	goto BEG
	:note
	start notepad
	goto beg
	:yes
	FOR %%I IN (C:\windows\*.*) DO echo %%I
	pause
	goto beg
	:jakieś%
	if not exist "%~1" goto ent
	echo copy %1 "%~d1%~p1%~n1.bak"
	:ent
	echo on
	goto beg
	:www
	start https://zspm.pl/
	goto BEG
	:END
	