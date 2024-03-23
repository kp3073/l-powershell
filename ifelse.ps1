$pat ="C:\Users\k-patel\OneDrive - Align Technology, Inc\Documents\ps\text.txt"

if(test-path -path $pat){
  $new=Get-Content -Path $pat
  if($new.count -lt 2){
    Write-Output "File has 2 or less than 2 lines"
  }
  elseif ($new.count -lt 4) {
    <# Action when this condition is true #>
    Write-Output "File hase less than 4 lines"
  }
  else {
    Write-Output "file hase more then 4 lines"
  }
}
else {
    Write-Output "File path $new does not exists"
}