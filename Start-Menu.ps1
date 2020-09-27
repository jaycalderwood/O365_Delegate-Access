#####
# This script will use the built in profile functions to connect to O365 Services
# With delegated Access
# Version 1 created with Love by Jay Calderwood
# Change Log
# 09/27/20 Initial Version

function Start-Menu

{
     param (
           [string]$Title = 'Delegated Access Menu'
     )
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' To connect to MSOL."
     Write-Host "2: Press '2' To connect to EXO."
     Write-Host "3: Press '3' To connect to SFBO/Teams."
     Write-Host "Q: Press 'Q' to quit."
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
          
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')
