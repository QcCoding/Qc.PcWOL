@echo off
set publishPath=%~dp0\bin\Release\netcoreapp2.2\win-x64\publish
set offlineHtml=%publishPath%\app_offline.htm

echo ִ�з�����д��%offlineHtml%��
echo ��վά����>%offlineHtml%

dotnet publish -c release -r win-x64

del %offlineHtml%

pause
exit