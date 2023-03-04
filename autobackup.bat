@echo off

set out_path=C:\autoBuckups

set data_path=<INSERT_DIRECTORY>

if not exist "%out_path%" mkdir "%out_path%"

set datetime=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%
set zip_file=%out_path%\buckup_%datetime%.zip

pushd "%data_path%"
powershell Compress-Archive -Path * -DestinationPath "%zip_file%"
popd

echo Backup created at "%zip_file%".
