oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

#Imports PSReadLine
Import-Module PSReadLine

#Tab - Gives a menu of suggestions
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

#UpArrow will show the most recent command
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

#DownArrow will show the least recent command
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

#During auto completion, pressing arrow key up or down will move the cursor to the end of the completion
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

#Shows tooltip during completion
Set-PSReadLineOption -ShowToolTips

#Gives completions/suggestions from historical commands
Set-PSReadLineOption -PredictionSource History

#Aliases
New-Alias -Name c -Value Clear-Host

function Get-Projects { & Set-Location C:\Source\Repos }
New-Alias -Name p -Value Get-Projects

function Get-Git { & git $args }
New-Alias -Name g -Value Get-Git -Force -Option AllScope

function Get-GitStatus { & git status $args }
New-Alias -Name gst -Value Get-GitStatus -Force -Option AllScope

function Get-GitAdd { & git add $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

function Get-GitCommit { & git commit $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope

function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope
