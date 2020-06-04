@echo off

set /p str1=Enter name of file: 


pandoc %str1% -f docx -t gfm -o %str1:.docx=.md%
pandoc %str1% -f docx -t markdown -o %str1:.docx=2.md%
set /p message=Would you like to add a change description?:

git add *
git commit -m "script push"

pause