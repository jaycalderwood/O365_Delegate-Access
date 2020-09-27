# O365_Delegate-Access
 This will assist in logging into O365 as a CSP Delegated Admin

Download Both Files. 

Microsoft.Powershell_profile.ps1
Start-Menu.ps1

Save the Start-Menu.ps1 somewhere.

Open Powershell and do the following:

new-item -type file -force $profile
Then 
notepad $profile

Copy and paste the contents of the Microsoft.Powershell_profile.ps1. Save the file. Those are all the modules to connect. 


 
Close and reopen powershell, run .\Start-Menu.ps1, and log in with your CSP Delegated Admin Credentials. 
