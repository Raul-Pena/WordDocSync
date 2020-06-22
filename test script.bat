@echo off

set /p str1=Enter name of file: 

pandoc %str1% -f docx -t gfm -o %str1:.docx=.md%
pandoc %str1% -f docx -t commonmark -o %str1:.docx=3.md%


set /p message=Would you like to add a change description?:

git add *
git commit -m "script push"

pause