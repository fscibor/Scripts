


$komp = "PC0156371","PC0156374","PC0156375","PC0156379","PC0156417","PC0171694","PC0171714","PC0171731","PC0171751","PC0171791","PC0171792","PC0171795","PC0171800","PC0171801","PC0171807","PC0171828"



$komp | ForEach {Write-Host $_
if (Test-Connection $_ -Quiet)
{

Invoke-Command -ComputerName $_ -ScriptBlock {dir c:\Users} >> C:\Users\A125647\Desktop\test.txt

}
else 
{
Write "$_ is Offline" >> C:\Users\A125647\Desktop\test.txt
}



}