# Küsin kasutajalt eesnime
$eesnimi = Read-Host "Sisesta kasutaja eesnimi"

# Küsin kasutajalt perekonnanime
$perekonnanimi = Read-Host "Sisesta kasutaja perekonnanimi"

# Loome kasutajanime
$kasutajanimi = "$($eesnimi.ToLower()).$($perekonnanimi.ToLower())"

# Proovin kustutada kasutaja
try {
    Remove-LocalUser -Name $kasutajanimi -ErrorAction Stop
    Write-Host "Kasutaja '$kasutajanimi' kustutatud edukalt!" -ForegroundColor Green
}
catch {
    $errorMessage = $_.Exception.Message
    if ($errorMessage -like '*not found*') {
        Write-Host "Kasutajat '$kasutajanimi' ei leitud!" -ForegroundColor Yellow
    }
    else {
        Write-Host "Kasutaja kustutamine ebaõnnestus! Veateade: $errorMessage" -ForegroundColor Red
    }
}
