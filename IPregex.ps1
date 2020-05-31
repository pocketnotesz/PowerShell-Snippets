
$IP_Check = '^(?:(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)|\*)(?:,\s*(?:(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)\.(?:25[0-5]|2[0-4]\d|[01]?\d\d?)|\*))*$'

$UserInput = Read-host "Enter Ip to validate: (x.x.x.x)"

If ($UserInput -match $IP_Check)
	{
		write-host $UserInput " is valid IP."
	}
else
	{
		Write-host $UserInput " is not a valid IP."
	}

