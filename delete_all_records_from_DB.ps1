$InfluxHost = "InfluxDBv2 IP"
$Bucket     = ""
$Org        = ""
$Token      = "API"

$stop = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
$json = "{""start"":""1970-01-01T00:00:00Z"",""stop"":""$stop""}"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($json)

Invoke-WebRequest -Method Post `
  -Uri "$InfluxHost/api/v2/delete?org=$Org&bucket=$Bucket" `
  -Headers @{ Authorization = "Token $Token" } `
  -ContentType 'application/json; charset=utf-8' `
  -Body $bytes `
  -UseBasicParsing