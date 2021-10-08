#!/bin/bash

powershell -c " Start-Process powershell -ArgumentList ' powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -WindowStyle Hidden -File .\Hyper-V__CreateVM.ps1 ' -verb RunAs "

