REM This file is intended to be used when the toast notification script is used with scheduled tasks with the Hidden.vbs file. See the documentation for further details
powershell.exe -file "New-ToastNotification.ps1" -Config "config-toast-pendingreboot.xml"
