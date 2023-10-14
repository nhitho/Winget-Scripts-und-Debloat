Write-Host "Script wird gestartet"
# Definieren Sie den Installationsort
$installLocation = 'D:\'

# Anwendungen mit Namen und dazugehoerigen ID
$applications = @{
    "Adobe Acrobat Reader DC" = "Adobe.Acrobat.Reader.64-bit";
    "Krita" = "Krita.Krita";
    "Microsoft Office" = "Microsoft.MicrosoftOffice";
    "Steam" = "Valve.Steam";
    "Epic Games Launcher" = "EpicGames.EpicGamesLauncher";
    "GOG Galaxy" = "GOG.Galaxy";
    "Visual Studio Code" = "Microsoft.VisualStudioCode";
    "Google Chrome" = "Google.Chrome";
    "HWiNFO"= "REALiX.HWiNFO";
    "KeePass"="DominikReichl.KeePass";
    "CrystalDiskInfo"="CrystalDewWorld.CrystalDiskInfo";
    "OBS Studio"="OBSProject.OBSStudio";
    "Elgato Stream Deck"="Elgato.StreamDeck";
    "Elgato Control Center"=" Elgato.ControlCenter";
    "Amazon Games"="Amazon.Games";
    "PowerToys"="Microsoft.PowerToys";
    "Discord"="Discord.Discord";
    "NVIDIA GeForce Experience"="Nvidia.GeForceExperience";
    "Proton Mail Bridge"="ProtonTechnologies.ProtonMailBridge";
    "Samsung Magician"=" Samsung.SamsungMagician";
}

# Install Apps anhand ID und Erstellung anhand appName den Ordner
foreach ($app in $applications.GetEnumerator()) {
    $appName = $app.Key
    $appId = $app.Value
    $appFolder = Join-Path -Path $installLocation -ChildPath $appName

    # Erstellt den Ordner
    New-Item -Path $appFolder -ItemType Directory -Force

    # Install mit Packetbestaetigung
    winget install --location $appFolder --id $appId --accept-package-agreements
}

Write-Host "Die Installationen wurden abgeschlossen."
