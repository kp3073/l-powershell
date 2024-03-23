##learning Array in powershell

$myArray=@("test1","test2","test3")

$myArray[0]

$myArray=$myArray+"test4"

$myArray

$myArray+="test5"

$myArray

#########arrayList########


$myList= New-Object -TypeName System.Collections.ArrayList

[void]$myList.Add("test1")
[void]$myList.Add("test2")
$myList.AddRange(@("test3","test4","test5"))



$myList.RemoveRange(0,3)

$myList

$arrayList=New-Object -TypeName System.Collections.ArrayList
Measure-Command -Expression {$arrayList.AddRange(@(0..5000))}


#############

$myArray1 = @()

$myArray1 += @(1,2,4), @(3,4,5), @(6,7,8)

$myArray[1][3]


#######

$fruits = @("Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig", "Grape", "Honeydew", "Kiwi", "Lemon")

#$fruits | ForEach-Object {"fruits: $_"}

$fruits.ForEach({"fruit: $_"})

$fruits | ForEach-Object {"fruits: $_"}

$sortfruits = $fruits | Sort-Object -Descending

$sortfruits

$filterfruits = $fruits | Where-Object {$_ -like "**ry"}

$filterfruits