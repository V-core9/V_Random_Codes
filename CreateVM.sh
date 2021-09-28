#!/bin/bash

powershell -c " Start-Process powershell -verb RunAs  -ArgumentList 'powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File C:\Users\v__V_\_V_WorkSpace\Vpro\CreateVM.ps1' "



# powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -WindowStyle Hidden -File .\CreateVM.ps1
