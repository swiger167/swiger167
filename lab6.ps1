set-location c:\
(this will create a file and ask the user what they want it to be named and where they want it to be stored)
function filecreation
    $name = Read-Host name of folder?
    $path = read-host path of folder?
    $yesno = read-host 'are you sure? (y/n)'
if ($yesno -eq 'y') 
new-item -type directory -name $name -path $path 
(this will import the employeelist and take out spaces and lower everything in caps)
$employeelistcsv = import-csv -path 'c:\users\christopher swiger\desktop\employeelist.csv'
foreach ($employeename in $employeelistcsv)
    {$employeename = $employeelistcsv.name.replace(' ','').tolower()
    new-item $employeename -itemtype dir
    $folder = $employeelistcsv + $employeename
New-Item -path $folder -name "hello.txt" -ItemType "file" -value "welcome to the technical college"
$num = 5,50,50,3,1
$X = read-host
foreach ($digit in $num) { $X = read-host "multiply $digit by how much?"
$figure = $digit*$X 
(this will check the connection to each of the servers on the sever.csv file list)
function servercheck
$severlistcsv = import-csv -path 'c:\users\christopher swiger\desktop\serverlist.csv'
Test-Connection -$serverlistcsv
function printerfiles
(this will create a file name for each printer on the system)
$printer = Get-Printer
new-item -type dir -name printer -Path c:\
foreach ($printer in $printfile.name){
New-Item -type directory  -name $printer -path c:\printers
Get-Printer $printerfile | convertto-json | Out-File c:\printers\$printer.json