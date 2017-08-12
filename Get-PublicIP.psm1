

function Get-PublicIP {
    process {
        $reqBody = (Invoke-RestMethod -Uri "http://checkip.dyndns.com/" -Method Get).GetElementsByTagName("body")
    }    
    end {
        ($reqBody[0].InnerText.Substring($reqBody[0].InnerText.IndexOf(":")+1)).Trim()
    }
}
