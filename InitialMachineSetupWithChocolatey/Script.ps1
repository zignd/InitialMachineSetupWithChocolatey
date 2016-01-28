# chocolatey installation script

Write-Host "Installing chocolatey"
Set-ExecutionPolicy Unrestricted -Force
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Updating PATH variable"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Setting up chocolatey"
choco feature enable -n allowGlobalConfirmation

##################### browsers #####################

Write-Host "Installing Chrome"
cinst google-chrome-x64

Write-Host "Installing Firefox"
cinst firefox

Write-Host "Installing Opera"
cinst opera

##################### dev #####################

Write-Host "Installing LINQPad"
cinst linqpad4

Write-Host "Installing Fiddler"
cinst fiddler

Write-Host "Installing cURL"
cinst curl

Write-Host "Installing JDK"
cinst jdk8 

Write-Host "Installing dotPeek"
cinst dotpeek

Write-Host "Installing Cmder"
cinst cmder

Write-Host "Installing GitHub"
cinst github

Write-Host "Installing SourceTree"
cinst sourcetree

Write-Host "Installing Visual Studio Code"
cinst visualstudiocode

Write-Host "Installing Sublime Text 3"
cinst sublimetext3

Write-Host "Installing Atom"
cinst atom

Write-Host "Installing Python 2"
cinst python2

Write-Host "Installing Node JS"
cinst nodejs

##################### misc #####################

Write-Host "Installing CPU-Z"
cinst cpu-z

Write-Host "Installing JavaRuntime"
cinst javaruntime

Write-Host "Installing CCleaner"
cinst ccleaner

Write-Host "Installing VLC"
cinst vlc

Write-Host "Installing Foxit Reader"
cinst foxitreader

Write-Host "Installing FlashPlayer"
cinst flashplayerplugin

Write-Host "Installing Skype"
cinst skype

Write-Host "Installing Paint.NET"
cinst paint.net

Write-Host "Installing Telegram"
cinst telegram

Write-Host "Installing HexChat"
cinst hexchat

Write-Host "Installing Spotify"
cinst spotify

Write-Host "Installing youtube-dl"
cinst youtube-dl

Write-Host "Installing WinRAR"
cinst winrar