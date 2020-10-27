# O365_Delegate-Access
 I ran into a problem. Needed an easy way to connect to CSP clients without building an
 Azure AD Application. There are somethings that cannot work with delegated access. This
 includes Security and Compliance and SPO things. 

Download Both Files. 

Microsoft.Powershell_profile.ps1 < -- This is the Profile>
Start-Menu.ps1 <-- This is the application.>

Save the Start-Menu.ps1 somewhere.

Open Powershell and do the following:
If you do not have a powershell profile set up perform the following:

new-item -type file -force $profile
Then 
notepad $profile

Copy and paste the contents of the Microsoft.Powershell_profile.ps1. Save the file. Those are all the modules to connect. 

If you have a powershell profile, just append the contents of the Profile Script to your profile. 
 
Close and reopen powershell, run .\Start-Menu.ps1, and log in with your CSP Delegated Admin Credentials. 
