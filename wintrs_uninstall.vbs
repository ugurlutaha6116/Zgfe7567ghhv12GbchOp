Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")
Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name='wintrs.exe'")

For Each objProcess in colProcesses
    objProcess.Terminate()
Next