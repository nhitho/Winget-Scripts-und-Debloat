# Under development!!!!!

# Winget Scripts 

Für automatische Updates und für Installieren der Apps.

# Beachtung der Installation

Je nach Bedürfnis bitte aus der TextDatei (Ist noch nicht vorhanden) die Namen und ID beim winget_install_apps unter ```"@application"``` einfügen.
```
# Anwendungen mit Namen und dazugehoerigen ID
$applications = @{
    "Name_des_Programms"="ID_des_Programmes";
}
```

# Installation

Führen Sie winget_install_apps.ps1 in der Powershell aus.

# Aufgabenplanung

Schedule_UpdateAppTask_update.ps1 erstellt die Aufgabe für Update_apps.ps1
Hierbei ist zu beachten das unter ```$location``` Ihr Ordnerzuweisung einfügen sollten.
```
# Definieren Sie den Pfad zu Ihrem PowerShell-Skript
$SkriptPfad = "C:\Pfad\zur\Datei\update_apps.ps1"
```
Sobald Sie die Schritte beachtet haben können Sie die Schedule_UpdateAppTask_update.ps1 starten.

# update_apps.ps1

Dieser wird nach der Aufgabenplanung beim nächsten Login bzw. Hochfahren 60sec lang warten bis sich die Pakete updaten.
Sie können auch die Wartezeit verringern, wenn Sie den ``` "Start-Sleep -Seconds 60" ``` verinngern d.h. die Zahl ist umändern, je nach Ihren Bedürfnis.

# WinDebloat !! Under Development!

Vorerst ist noch kein Script vorhanden.
Werde es noch bei Bedarf hinzufügen.

#Liste für Apps !! Under Development!

Wird später nachgereichet.
