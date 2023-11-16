$Hashtable1 = @{Name="John","Joe","Mary";DaysWorked=12,20,18}

$Hashtable2 = @{Name="John","Joe","Mary";SalaryPerDay=100,120,150}

$JohnSalary =$Hastable1.DaysWorked[0] * $Hastable2.SalaryPerDay[0]
$JoeSalary = $Hastable1.DaysWorked[1] * $Hastable2.SalaryPerDay[1]
$MarySalary = $Hastable1.DaysWorked[2] * $Hastable2.SalaryPerDay[2]

$Hashtable3 = @{Name=$Hashtable1.Name[0],$Hashtable1.Name[1],$Hashtable1.Name[2];Salary=$JohnSalary,$JoeSalary,$MarySalary}
$Hashtable3