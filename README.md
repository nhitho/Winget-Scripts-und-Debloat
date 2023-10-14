#Winget Scripts 

Für automatische Updates und für Installieren der Apps.

# Beachtung der Installation

Je nach Bedürfnis bitte aus der Text Datei die Namen und ID beim winget_install_apps unter "@application" einfügen.

#Installation

Führen Sie winget_install_apps.ps1 aus für die Installation.

#Aufgabenplanung

Schedule_UpdateAppTask_update.ps1 erstellt die Aufgabe für Update_apps.ps1

Hierbei ist zu beachten das unter $location Ihr Ordnerzuweisung einfügen sollten.

Ihr Benutzername bei $user müssen Sie auch eintragen.

Sobald Sie die Schritte beachtet haben können Sie die Schedule_UpdateAppTask_update.ps1 starten.

#update_apps.ps1

Dieser wird nach der Aufgabenplanung beim nächsten Login bzw. Hochfahren 60sec lang warten bis sich die Pakete updaten.
Sie können auch die Wartezeit verringern, wenn Sie den "Start-Sleep -Seconds 60" verinngern d.h. die Zahl ist umändern, je nach Ihren Bedürfnis.
