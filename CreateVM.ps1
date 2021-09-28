

New-VM -Name V_DC -MemoryStartupBytes 512MB -Path F:\ws2012.local

New-VHD -Path F:\ws2012.localV_DCV_DC.vhdx -SizeBytes 50GB -Dynamic

Add-VMHardDiskDrive -VMName V_DC -Path F:\ws2012.localV_DCV_DC.vhdx 

Set-VMDvdDrive -VMName V_DC -ControllerNumber 1 -Path "C:\Users\v__V_\_V_WorkSpace\Vpro\Win10_x64.iso"

Start-VM -Name V_DC

Get-VM V_DC

Stop-VM V_DC

Set-VMMemory -VMName V_DC -DynamicMemoryEnabled $true -StartupBytes 512MB -MinimumByte 512

