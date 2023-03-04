@echo off

set out_path=C:\Buckups
echo Select the directory to backup:
set /p data_path=	

if not exist "%out_path%" mkdir "%out_path%"
echo Backup file nme:
set /p zip_file="%out_path%\"

echo Creating backup...

pushd "%data_path%"
powershell Compress-Archive -Path * -DestinationPath "%out_path%\%zip_file%"

popd

echo Backup created at "%zip_file%".
