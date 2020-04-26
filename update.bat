
@echo off
set PATH=%PATH%;%~dp0\bat_tools

echo This bat will extract all files coming from sfplus_core-d.pk3
echo and sfplus_res-d.pk3 if exist. This is intended to be used after
echo each coding session, to update and commit directly to the git.
echo You can also do it via Slade, but for lazy-ness sake, 
echo I'd recommend you to use this way.
chgcolor 0C
echo If you're working via Directories, beware! 
echo This bat will delete the folders core and res from the file.
echo To save your changes, build with the build bats and then try this file again.
echo.
chgcolor 07
echo If you dont need to execute this, close this window.
pause
del .\core
7za x -ocore -y "sfplus_core-d.pk3"

del .\res
7za x -ores -y "sfplus_res-d.pk3"

pause