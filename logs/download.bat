@echo off
setlocal enabledelayedexpansion

REM Change the following variables according to your needs
set "baseURL=http://www.stickempires.com/news.php?index="
set "outputFolder=C:\Users\dyzqy\Documents\GitHub\se-log\logs"

for /L %%i in (0,1,94) do (
    set "url=!baseURL!%%i"
    set "filename=!outputFolder!\news_%%i.html"
    curl "!url!" -o "!filename!"
    echo Downloaded !url! to !filename!
)

echo All downloads complete.