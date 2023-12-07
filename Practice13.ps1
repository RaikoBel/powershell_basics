function mainmenu {
    Write-Host "`t`t`tArea Calculator" -ForegroundColor Green
    Write-Host "`n`t`t`tMain Menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perform the respective task`n" -ForegroundColor White
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit`n" -ForegroundColor Green
    $choice = Read-Host "Enter your choice"
    return $choice
}

function checkmenu {
    Write-Host "`n`nPlease select the next option" -ForegroundColor Yellow
    Write-Host "`n1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit`n" -ForegroundColor Green
    $ch2 = Read-Host "Enter your choice"

    switch ($ch2) {
        1 {
            mainmenu
        }
        2 {
            exit
        }
        default {
            Write-Host "`nEnter correct option" -ForegroundColor Red
            checkmenu
        }
    }
}

# Main program loop
while ($true) {
    $choice = mainmenu

    switch ($choice) {
        1 {
            cls
            Write-Host "`t`t`tArea of Square`n" -ForegroundColor Green
            [int]$side = Read-Host "Enter the side of the square"
            $area = $side * $side
            Write-Host "`nArea of the square : "$area -ForegroundColor Green
            checkmenu
        }
        2 {
            cls
            Write-Host "`t`tArea of Rectangle`n" -ForegroundColor Green
            [int]$length = Read-Host "Enter length of the rectangle"
            [int]$breadth = Read-Host "Enter breadth of the rectangle"
            $area = $length * $breadth
            Write-Host "`nArea of the rectangle : "$area -ForegroundColor Green
        }
        3 {
            cls
            Write-Host "`t`tArea of Circle`n" -ForegroundColor Green
            [int]$radius = Read-Host "Enter the radius of the circle"
            $area = 3.14*$radius*$radius
            Write-Host "`nArea of the circle : "$area -ForegroundColor Green
        }
        4 {
            cls
            Write-Host "`t`tArea of Triangle`n" -ForegroundColor Green
            [int]$height = Read-Host "Enter height of triangle"
            [int]$base = Read-Host "Enter base of triangle"
            $area = 0.5*$height*$base
            Write-Host "`nArea of Triangle : "$area -ForegroundColor Green
        }
        5 {
            exit
        }
        default {
            Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }
    checkmenu
}
