$value1 = Read-Host "Enter the first value:"
$value2 = Read-Host "Enter the second value:"

if($value1 -gt $value2)
{
    Write-Host "The higer number is: $value1"
}
else
{
    Write-Host "The higer number is: $value2"
}

##########
Write-Host "Select a country" -ForegroundColor Yellow
Write-Host "1: India" -ForegroundColor Cyan
Write-Host "2: Australia" -ForegroundColor Cyan
Write-Host "3: China" -ForegroundColor Cyan

$valik = Read-Host "Please select country"

if($valik -eq "1")
{
    Write-Host "India's capital is Delhi" -ForegroundColor Green
}
elseif($valik -eq "2")
{
    Write-Host "Australia's capital is Canberra" -ForegroundColor Green
}
elseif($valik -eq "3")
{
    Write-Host "China's capital is Bejing" -ForegroundColor Green
}
else
{
    Write-Host "Wrong choise" -ForegroundColor Red
}