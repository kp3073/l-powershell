$arr = @()

$process = Get-Process

foreach($chr in $process)
{
    if ($chr.ws/1mb -gt 100) 
    {
    <# Action to perform if the condition is true #>
$arr += New-Object psobject -Property @{'processname' = $chr.Name ; 'Workingset' =$chr.WS }
    }
}

$arr | Select-Object 'processname', 'workingset' | Export-Csv .\new.csv

.\new.csv

$CsvImport = @()

$CsvImport = Import-Csv .\new.csv

foreach($ch in $CsvImport) {Write-Host "ProcesName:" $ch.processname "workingset:" $ch.workingset} 

$CsvImport | Format-Table  -AutoSize
