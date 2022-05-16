try {
    Import-Module Terminal-Icons
    Import-Module posh-git
} catch {

}
If (Get-Module -name posh-git) {
    Set-PoshPrompt -Theme ~/ohmyposh-nrvonogd.json
    $env:POSH_GIT_ENABLED = $true
}


Set-PSReadLineOption -PredictionSource History
$VIUsername = 'nrvonogd'
$MaximumHistoryCount = "10000"

Switch ($PSVersionTable.PSVersion.Major) {

5 {$host.ui.rawui.windowtitle="Powershell 5 : $env:userdomain\$env:username"}
6 {$host.ui.rawui.windowtitle="Powershell 6: $env:userdomain\$env:username"}
7 {$host.ui.rawui.windowtitle="Powershell 7: $env:userdomain\$env:username"}

}