@echo off    
call activate tableau-Python-Server

title Tabpy - Tableau-Python-Server-Console
echo ********************************************************************
echo *   Genererer SnakeBooks med Python-script , SnakeKits.py          *
echo ********************************************************************
REM   %windir%\system32\cmd.exe  /K  E:\ProgramData\Anaconda3\Scripts\Run_Script.bat
REM  C:\Windows\System32\wscript.exe invis.vbs "e:\ProgramData\Anaconda3\envs\Tableau-Python-Server\TabPy-master\startup.bat" %*
rem C:
rem CD \Users\adminmadiva\SnakeKits
E:
CD \Scripts\SnakeKits
rem E:\ProgramData\Anaconda3\envs\Tableau-Python-Server\python.exe "C:\Users\adminmadiva\SnakeKits\SnakeKits.py"
E:\ProgramData\Anaconda3\envs\Tableau-Python-Server\python.exe "E:\Scripts\SnakeKits\SnakeSources.py"
E:\ProgramData\Anaconda3\envs\Tableau-Python-Server\python.exe "E:\Scripts\SnakeKits\SnakeKits_SnakeSource.py"

echo *******************************************************************************************************
echo *    Kopierer SnakeBooks Datasources til        \\rmapps0892\Faelles\SnakeKits\output\SnakeSources                                                                                               *
echo *******************************************************************************************************
xcopy /Y E:\Scripts\SnakeKits\output\SnakeSources\*.tds \\rmapps0892\Faelles\SnakeKits\output\SnakeSources



echo *******************************************************************************************************
echo *    Kopierer SnakeBooks til        \\rmapps0892\Faelles\SnakeKits\output                                                                                                 *
echo *******************************************************************************************************
xcopy /Y E:\Scripts\SnakeKits\output\*.twb \\rmapps0892\Faelles\SnakeKits\output



rem pause
rem start startup.cmd
