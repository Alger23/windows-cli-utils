Param(
  [string]$filePath
)
$data = Import-Csv $filePath

foreach ($item in $data) {
    $vpnName = $item.name
    Remove-VpnConnection -Name $vpnName -Force
}
