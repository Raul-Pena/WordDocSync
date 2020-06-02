@echo off

set /p str1=Enter name of file: 

pandoc %str1% -f docx -t gfm -o %str1:.docx=.md%
set /p message=Would you like to add a change description?:

pause