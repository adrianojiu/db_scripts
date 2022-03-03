Import-Module PSSQLite

$dateSW = get-date -Format dd-MM-yyyy-hh
$SpiceDatabase = "C:\Program Files (x86)\Spiceworks\db\spiceworks_prod.db"
$SpiceWInventory = Invoke-SqliteQuery -DataSource $SpiceDatabase -Query "SELECT id,name,operating_system,version,manufacturer,model,serial_number,memory,number_of_processors,device_type FROM devices"

$SpiceWInventory | Export-Csv -Path C:\Inventory-Share\SWinventory_$dateSW.csv -NoTypeInformation