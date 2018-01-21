$first = 0
$last = 255
$sub_net = Read-Host "Please enter the first 3 octets of the IP address"
while ($first -le $last) {
    $IP = "$sub_net.$first" 
    $test_connection = Test-Connection -ComputerName $IP -Count 1 -Quiet
    if ($test_connection){ 
        Write-Host "$IP" -ForegroundColor Green
    }
    $first++
}