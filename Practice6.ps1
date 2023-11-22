Get-ChildItem -Path "C:\Users\raiko\Desktop\test.txt"
$file = Get-ChildItem -Path "C:\Users\raiko\Desktop\test.txt" | where {$_.Name -like "*.csv"} | Select Name.Lenght
$sizeinKB = $file.Lenght/1KB
$sizeinMB = $file.Lenght/1MB

Write-Host "nFileName : "$file.Name
Write-Host "Size in KB :"$sizeinKB
Write-Host "Sine in MB: "$sizeinMB