﻿$start = New-ScheduledTaskAction -execute 'Powershell.exe' -Argument ".\SNMPPowershell.ps1"
$when = New-ScheduledTaskTrigger -Daily -At 8am
Register-ScheduledTask -Action $start -Trigger $when -TaskName "MattAutomation"