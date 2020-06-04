@echo off

set /p str1=Enter name of file: 


pandoc %str1% -f docx -t gfm -o %str1:.docx=.md%
pandoc %str1% -f docx -t markdown -o %str1:.docx=2.md%
pandoc %str1% -f docx -t commonmark -o %str1:.docx=3.md%
pandoc %str1% -f docx -t markdown_mmd -o %str1:.docx=4.md%
pandoc %str1% -f docx -t markdown_phpextra -o %str1:.docx=5.md%
pandoc %str1% -f docx -t markdown_strict -o %str1:.docx=6.md%

set /p message=Would you like to add a change description?:

git add *
git commit -m "script push"

pause