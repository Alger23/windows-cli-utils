Param(
  [string]$username,
  [string]$password,
  [string]$filePath
)

$data = Import-Csv $filePath

foreach($item in $data){
    $vpnName = $item.name
    $address = $item.address
    Add-VpnConnection -Name $vpnName -ServerAddress "$address" -EncryptionLevel Required -Force:$true -RememberCredential:$true -SplitTunneling:$false 
    Set-VpnConnectionUsernamePassword -connectionname $vpnName -username $username -password $password -domain ''
}
