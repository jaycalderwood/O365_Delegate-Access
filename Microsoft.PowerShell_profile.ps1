Function Get-CustomerID {
 
    $name = Read-Host "Type part of the organization's name"
    $Customers = @()
    $Customers = @(Get-MsolPartnerContract -All | ? {$_.Name -match $name})
 
    if($Customers.Count -gt 1){
 
        Write-Host "More than 1 customer found, rerun the function:"
        Write-Host " "
 
        ForEach($Customer in $Customers){
 
            Write-Host $Customer.Name
        }
    }
 
    if($Customers.count -eq 0){
     
        Write-Host "No customers found, rerun the function"
    }
 
    if($Customers.Count -eq 1){
 
    $global:cid = $Customers.tenantid
     
    Write-Host "$($Customers.name) selected. Use the -tenantid `$cid parameter to run MSOL commands for this customer. EX.Get-MsolUser -All -TenantID $cid"
    }
 
}

Function Connect-EXOnline{
 
Write-Output "Getting the Exchange Online cmdlets...Please wait..."
$dmn = Read-Host "What is the Client's domain?"
connect-exchangeonline -showprogress $true -delegatedorganization $dmn
 
}


Function Connect-Skype{
 
Write-Output "Getting the Teams/SFBO cmdlets...Please wait..."
$dmn = Read-Host "What is the Client's domain?"
Import-module skypeonlineconnector
$session = new-csonlinesession -overrideadmindomain $dmn
Import-pssession -session $session 
}

