# Küsi kasutajalt eesnimi
$eesnimi = Read-Host "Sisesta oma eesnimi"

# Küsi kasutajalt perekonnanimi
$perekonnanimi = Read-Host "Sisesta oma perekonnanimi"

# Loome kasutajanime
$kasutajanimi = "$($eesnimi.ToLower()).$($perekonnanimi.ToLower())"

# Loome täisnime
$taisnimi = "$eesnimi $perekonnanimi"

# Loome kasutaja kirjelduse
$kirjeldus = "Kasutaja nimi: $taisnimi"

# Loo lokaalne kasutaja
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
New-LocalUser -Name $kasutajanimi -Description $kirjeldus -Password $parool -ErrorAction SilentlyContinue

# Kontrolli kasutaja loomise õnnestumist
if ($?) {
    Write-Host "Kasutaja '$kasutajanimi' loodud edukalt!" -ForegroundColor Green
} else {
    Write-Host "Kasutaja loomine ebaõnnestus!" -ForegroundColor Red
    Write-Host "Veateade: $($Error[0].Exception.Message)" -ForegroundColor Red
}
