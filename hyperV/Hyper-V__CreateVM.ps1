
# New-VM -Name V_v_W.VM -MemoryStartupBytes 512MB -Path F:\V_V_v_WinTestEnv2021.local 
#New-VHD -Path F:\V_v_WinTestEnv2021.V_v_W.VM_drive.vhdx -SizeBytes 60GB -Dynamic 
#Add-VMHardDiskDrive -VMName V_v_W.VM -Path F:\V_v_WinTestEnv2021.V_v_W.VM_drive.vhdx 

New-VM -Name DC -MemoryStartupBytes 512MB -Path F:\ws2012.local

New-VHD -Path F:\ws2012.localDCDC.vhdx -SizeBytes 60GB -Dynamic

Add-VMHardDiskDrive -VMName DC -Path F:\ws2012.localDCDC.vhdx 

Set-VMDvdDrive -VMName DC -ControllerNumber 1 -Path "C:\Users\v__V_\_V_WorkSpace\V_Projects._.[random_codes]\hyperV\Win10_21H1_English_x64.iso"

Start-VM –Name DC

Get-VM DC

Stop-VM DC

# Configure dynamic memory  [ PS: stop it first ]
Set-VMMemory -VMName DC -DynamicMemoryEnabled $true -StartupBytes 512MB -MinimumByte 512
