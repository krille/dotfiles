oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

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