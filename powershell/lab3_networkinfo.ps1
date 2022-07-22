Get-Ciminstance -ClassName win32_networkadapterconfiguration |
where { $_.ipenabled -eq "true"}| 
Format-Table -AutoSize Description, Index,
IPAddress, IPSubnet,DNSServersearchorder,DNSdomain