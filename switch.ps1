$filepath = "C:\Users\k-patel\OneDrive - Align Technology, Inc\Documents\ps\file.txt"
$Data=Get-Content -path $filepath
$var=$Data[1]


if ($var -eq 'Ronak') {
    <# Action to perform if the condition is true #>
    Write-Output "My name is Tim"
}elseif ($var -eq 'Steve') {
    <# Action when this condition is true #>
    Write-Output "My name is Steve"
}elseif ($var -eq 'Keyur') {
    <# Action when this condition is true #>
    Write-Output "My name is Keyur"
}else {
    
    Write-Output "I dont know my name"
}

$var='Ragu'
switch ($var) {
    "Keyur" {  Write-Output "My name is Keyur" 
    break}
    "Ronak"{ Write-Output "My name is Ronak"
        break
    }
    "Ragu"{ Write-Output "My name is Ragu"
Break
    }
    Default {
        Write-Output "i dont know my name"
        break

    }
}


switch ($Data.Count) {
    {$_ -lt 2}{
        Write-Output "Filse has less then 2 lines"
        break
      }
    {$_ -le 9}{
        Write-Output "File have less then 9 lines"
        break
    }  
    Default {
        Write-Output "This file has more then 10 lines"
    }
}