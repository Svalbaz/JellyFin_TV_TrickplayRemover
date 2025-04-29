<#
SvalbazNet: TV_TrickplayRemove.ps1

Target:		TV
Use: 		Script looks recursively at all folders in $rootTV for any .trickplay folders and removes them
Reason: 	After a botched start with JellyFin I had to clean out old Trickplay folders before Rescanning my sanitised library.

# SAFE MODE: This Script is saved in "SAFE MODE", so by default it will only Write-Host the result,
it will not actually Remove-Item until you remove the -WhatIf
#>

# ----- VARIABLES ----- #
# Path to your TV directory
$rootTV = 		"\\192.168.1.184\TV\TV"

# ----- SCRIPT ----- #
# Recursively find folders where the name ends with '.trickplay'
$TrickplayRemover = Get-ChildItem -Path $rootTV -Recurse -Directory -Force | Where-Object {
    $_.Name -like '*.trickplay'
} | ForEach-Object {
    Write-Host "Removing trickplay folder: $($_.FullName)" -ForegroundColor Red
    Remove-Item -Path $_.FullName -Recurse -Force -WhatIf # SAFE MODE: REMOVE -WhatIf to Remove-Item
}
