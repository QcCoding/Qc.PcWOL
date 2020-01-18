@echo off
set publishPath=%~dp0\bin\Release\netcoreapp2.2\win-x64\publish
set offlineHtml=%publishPath%\app_offline.htm

echo 执行发布【写入%offlineHtml%】
echo 网站维护中>%offlineHtml%

dotnet publish -c release -r win-x64

del %offlineHtml%

pause
exit