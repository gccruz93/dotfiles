# $env:USERPROFILE\Documents\PowerShell
#. $env:USERPROFILE\.config\powershell\user_profile.ps1

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

New-Alias gt goto

function goto {
    param (
        $location
    )

    Switch ($location) {
        "pwsh" {
            Set-Location -Path "$home/.config/powershell"
        }
        "nvim" {
            Set-Location -Path "$home/AppData/Local/nvim"
        }
        "ds" {
            Set-Location -Path "D:/Datasigh/Projetos/www"
        }
        "dev" {
            Set-Location -Path "D:/Dev"
        }
        default {
            echo "Invalid location"
        }
    }
}
