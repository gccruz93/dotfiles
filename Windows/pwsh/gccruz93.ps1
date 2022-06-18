# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Oh-my-Posh
oh-my-posh init pwsh | Invoke-Expression
$omp_config = Join-Path $PSScriptRoot ".\gccruz93.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias vi nvim
Set-Alias l ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function go ($location) {
    Switch ($location) {
        "pwsh" {
            Set-Location -Path "$home/.config/pwsh"
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

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}