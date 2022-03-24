# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your development environment! ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco install ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco install wsl2 --params "/Version:2 /Retry:true" -y
choco install wsl-ubuntu-2004 --params "/InstallRoot:true" -y

# program languages
Write-Host "====> Installing core components..."
choco install python3 -y
choco install openjdk -y # latest jdk
# choco install openjdk11 -y


# core components
Write-Host "====> Installing core components..."
choco install cmder -y
choco install powershell-core -y
#choco install microsoft-windows-terminal -y
choco install git -y
choco install curl -y
#choco install wget -y
#choco install nodejs-lts -y

choco install openjdk
choco install cmake -y
#choco install 7zip -y
#choco install docker-cli -y
#choco install kubernetes-cli -y
#choco install minikube -y
choco install docker-desktop -y
#choco install docker-compose -y
#choco install terraform -y
#choco install openssl -y
choco install putty -y
#choco install jq -y
#choco install dotnetcore-sdk -y
#choco install lens -y

# ide
Write-Host "====> Installing ides..."
choco install intellijidea-ultimate
choco install pycharm


# documentation
Write-Host "====> Installing ducumentation tools..."
choco install jopline

# browsers
Write-Host "====> Installing web browsers..."
#choco install firefox -y
choco install GoogleChrome -y


# 3d development
#Write-Host "====> Installing 3D development softwares..."
#choco install InkScape -y


# additional softwares
Write-Host "====> Installing additional softwares..."
choco install foxitreader -y

Write-Host "=== Your development environment is ready to use! Enjoy! ==="
