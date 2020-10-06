#####
# This script will use the built in profile functions to connect to O365 Services
# With delegated Access
# Version 1 created with Love by Jay Calderwood
# Change Log
# 09/27/20 Initial Version
# 09/28/20 V.1.0.1 
## Added colors - Pretty
# 09/29/20 V.1.0.2
## Fixed Module for SFBO/Teams
# 10/06/20 V.1.0.3
## Added Menu Option to clear PS_Sessions
#####

function Start-Menu

{
     param (
           [string]$Title = 'Delegated Access Menu'
     )
     Write-Host -foregroundcolor DarkBlue "================ $Title ================"
    
     Write-Host -ForegroundColor Green "1: Press '1' To connect to MSOL."
     Write-Host -ForegroundColor Green "2: Press '2' To connect to EXO."
     Write-Host -ForegroundColor Green "3: Press '3' To connect to SFBO/Teams."
     Write-Host -ForegroundColor Orange "K: Press 'K' to Kill all Powershell Sessions"
     Write-Host -ForegroundColor DarkGreen "Q: Press 'Q' to quit."
}

do
{
     Start-Menu
     $input = Read-Host "Please make a selection, then Q to run commands against the service."
     switch ($input)
     {
           '1' {
               Connect-msolservice 
               Get-CustomerID
                'You are connected to MSOL.'
           } '2' {
                Connect-EXOnline
                'You are connected to EXO. '
           } '3' {
                Connect-Skype
                'You are Connected to Skype / Teams'
           }
             '4' {
                 End-PSS
                 'Ending all PS Sessions.....' 
             


           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')
