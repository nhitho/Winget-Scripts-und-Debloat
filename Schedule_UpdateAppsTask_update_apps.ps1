# Definieren Sie den Pfad zu Ihrem PowerShell-Skript
$SkriptPfad = "C:\Pfad\zur\Datei\update_apps.ps1"

# Geben Sie hier Ihren Benutzernamen ein
$user = $env:USERNAME

# Erstellen Sie eine Aktion, um das Skript auszufuehren
$Action = New-ScheduledTaskAction -Execute 'PowerShell.exe' -Argument "-ExecutionPolicy Bypass -File $SkriptPfad"

# Erstellen Sie einen Trigger, um das Skript bei der Anmeldung auszufuehren
$Trigger = New-ScheduledTaskTrigger -AtLogOn

# Registrieren Sie die Aufgabe in der Aufgabenplanung
Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName 'UpdateAppsTask' -User $user

# Starten Sie die Aufgabe
Start-ScheduledTask -TaskName 'UpdateAppsTask'