# Initialisations
oh-my-posh --init --shell pwsh --config C:\Users\it\OneDrive\ohmyposh.json | Invoke-Expression

# Module imports
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git

# Import local modules
if (Test-Path ~\OneDrive\Documents\PowerShell\LocalModules)
{

  $localModules = Get-Item ~\OneDrive\Documents\PowerShell\LocalModules\*

  ForEach ($m in $localModules)
  {
    Import-Module $m.FullName
  }

}

# Change tab-completion behaviour to be more bash-like
Set-PSReadLineKeyHandler -Key Tab -Function Complete
