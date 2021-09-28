
New-VM -Name V_W.VM -MemoryStartupBytes 512MB -Path D:\V_WinTestEnv2021.local 

New-VHD -Path F:\V_WinTestEnv2021.V_W.VM_drive.vhdx -SizeBytes 60GB -Dynamic 
Add-VMHardDiskDrive -VMName V_W.VM -Path F:\V_WinTestEnv2021.V_W.VM_drive.vhdx 
Set-VMDvdDrive -VMName DC -CommandontrollerNumber 1 -Path \"<path to ISO>\" 

Start-VM –Name V_W.VM 

Get-VM V_W.VM 

Stop-VM V_W.VM 

# Configure dynamic memory  [ PS: stop it first ]
Set-VMMemory -VMName DC -DynamicMemoryEnabled \$true -StartupBytes 512MB -MinimumByte 512 ";
