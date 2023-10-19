@echo off

if "%~1"=="" (
    echo no
    exit /b 1
)

set "iterations=%~1"
set "counter=1"

:loop
if %counter% gtr %iterations% goto :end
echo -----------------------
echo Iteration %counter%

echo airbrapeibgvpaehasoiuvbh > test.txt
git add test.txt
git commit -m "added things"

echo -----------------------

echo sirbfvefhzeioszgfbsdifvbasndirbhisdob > test.txt
git add test.txt
git commit -m "added other things"

set /a "counter+=1"
goto :loop

:end
git push
