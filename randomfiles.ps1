$Extensions=@(".html",".xls",".css",".txt",".png",".php",".py")
$fileCount=100
$destPath="C:\Users\k-patel\OneDrive - Align Technology, Inc\Documents\ps\tmpfiles"


if ((Test-Path -Path $destPath) -eq $false) {
    <# Action to perform if the condition is true #>
    New-Item -ItemType Directory -Path $destPath
}else{
    Write-Output "Directory Already exits"
}

for ($i = 0; $i -lt $fileCount; $i++) {
    <# Action that will repeat until the condition is met #>
    $fileName = -join ((65..90) + (97..122) | Get-Random -Count 8 | % {$_})
    $ext = $Extensions[(Get-Random -Minimum 0 -Maximum ($Extensions.Count -1))]
    $path = Join-Path -Path $destPath -ChildPath $fileName+$ext
    New-Item -ItemType File -Path $path
}
Write-Host "$filecount is created in path $destpath"