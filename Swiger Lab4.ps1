PS C:\fileserver> new-item -path C:\ -Name "fileserver" -ItemType Directory
set-location -path C:\fileserver
$employeelistcsv = import-csv -path 'C:\users\Christopher Swiger\Desktop\employeelist.csv'
foreach ($employeename in $employeelistcsv)
    {$employeename = $employeelistcsv.name.replace(' ','').ToLower()
    new-item $employeename -itemtype directory
    $folder = $employeelistcsv + $employeename
    New-item -path $folder -Name "hello.txt" -itemtype "file" -value "welcome to the technical college"
}