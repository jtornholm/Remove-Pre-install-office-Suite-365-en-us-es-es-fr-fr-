# Remove-Pre-install-office-Suite-365-en-us-es-es-fr-fr-
Script To Silently Uninstall Built-In Office 365

Many Windows 10 computers come with three versions of ClickToRun Office 365 preinstalled (EN, ES, FR) that have to be uninstalled before you can install any other version of Office.

It's a real hassle to do this manually through the Add/Remove Programs GUI when you're setting up multiple computers.

This script will get the unintall path from the Windows Registery and execute the command with a DisplayLevel=False flag to make the uninstallation silent. 

