# 使用說明

以下命令都在 powershell 環境下操作

第一次使用需要先安裝 [VPN帳密管理套件]

用 Administrator 權限啟動 powershell
```powershell
$ Install-Module -Name VPNCredentialsHelper
```

## 加入 windows 10 vpn 設定

Step 1. 修改 vpn-list.csv 的站台設定清單

檔案: vpn-list.csv 內容範例

```csv
name, address
電信1,vpn.sample123.org
電信2,vpn.sample456.org
```

Step 2. 執行加入 vpn 清單

./addvpn.ps1 -username "your-username" -password "your-password" -filePath "csv-file-name"

```powershell
$ ./addvpn.ps1 -username "your-username" -password "your-password" -filePath vpn-list.csv
```

## 移除

```powershell
$ ./removevpn.ps1 vpn-list.csv
```
