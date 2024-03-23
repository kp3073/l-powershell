Set-StrictMode -Off

$myHash=@{
    key1=10
    name='Oreo'
    key2=23
    key3=$true
}

$myHash.Keys

$myHash['key3']

$myHash.ContainsKey('key5')

$myHash.ContainsValue($true)

$myHash.Add('key4','add with dot')

$myHash['key5']="this is square bracket"

$myHash.key6="this is dot key"

$myHash.key1=0.5

$myHash

#############

$emp1=New-Object -TypeName PSCustomObject

Add-Member -InputObject $emp1 -MemberType NoteProperty -Name 'EmployeeID' -Value '1001'

Add-Member -InputObject $emp1 -MemberType NoteProperty -Name 'FirstName' -Value 'OREO'

Add-Member -InputObject $emp1 -MemberType NoteProperty -Name 'SurName' -Value 'Patel'

$emp1