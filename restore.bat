@echo off

set backup_path=C:\Buckups

echo Select the backup file to restore:
set /p backup_file="%backup_path%\"

echo Restore to:
set /p og_path=

if not exist "%backup_path%\%backup_file%" (
    echo Backup file not found.
    exit /b 1
)

echo Restoring backup...

powershell Expand-Archive -Path "%backup_path%\%backup_file%" -DestinationPath "%og_path%" -Force
popd

echo Backup restored successfully.
