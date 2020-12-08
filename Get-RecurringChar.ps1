function Get-RecurringChar {
    param (
    [string] $TestString
    )
        $i= 0
        $Array = @()
        $Array += $TestString[$i]
        Do{
            $i++
            If ( $Array -contains $TestString[$i]){
                Write-host -ForegroundColor Green "`n The first recurring character is $($TestString[$i]) `n" 
                break
     
             }
           Else{ $Array+= $TestString[$i]}
     
         } Until ($i -eq $TestString.Length)
    } 
     
     
    Get-RecurringChar -TestString 'abcdedcba' 
    