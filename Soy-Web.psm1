
<#
.SYNOPSIS
    Gets public ip for current internet connection
.DESCRIPTION
    Executes a get request to http://checkip.dyndns.com/
.OUTPUTS
  IP public Address
.NOTES
  Version:        1.0
  Author:         Soynerdito
  Creation Date:  August, 12 2017
  
.EXAMPLE
  Get-PublicIP
#>
function Get-PublicIP {
    process {
        $reqBody = (Invoke-RestMethod -Uri "http://checkip.dyndns.com/" -Method Get).GetElementsByTagName("body")
    }    
    end {
        ($reqBody[0].InnerText.Substring($reqBody[0].InnerText.IndexOf(":")+1)).Trim()
    }
}
