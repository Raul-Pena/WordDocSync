@echo off

set /p str1=Enter name of file: 

quit

pandoc %str1% -f docx -t gfm -o %str1:.docx=.md%
set /p message=Would you like to add a change description?:

git add *
git commit -m "committing changes to Doc.md"

pause