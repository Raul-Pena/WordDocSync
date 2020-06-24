@echo off

set /p str1=Enter name of file: 
set curr_dir=%CD%
set media_dir1=%CD%\pics1
set media_dir2=%CD%\pics2

echo %curr_dir%
echo %media_dir1%
echo %media_dir2%

echo DIR

pandoc %str1% -f docx -t gfm -o %str1:.docx=.md% --extract-media=%media_dir1%

pandoc %str1% -f docx -t commonmark -o %str1:.docx=3.md% --extract-media=%media_dir2%

set /p message="Would you like to add a change description?: "
git add *
git commit -m "script push"

pause