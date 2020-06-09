Import-Module posh-git
Import-Module oh-my-posh
Set-Prompt

function Get-CommandSource {
	$(Get-Command $args).Source
}

Set-Alias which Get-CommandSource

# Use nvim instead of vim if available (plays with Windows Prompt a bit better)
if (Get-Command nvim -ErrorAction SilentlyContinue) {
	Set-Alias -Name vi -Value nvim
	Set-Alias -Name vim -Value nvim
}
else {
	# Just assume if we don't have nvim we have vim... OK?
	Set-Alias -Name vi -Value vim
}

$gitroot = $env:GithubLocation
if (Test-Path $gitroot\jekyll-pwsh\jekyll.psm1) {
	Import-Module $gitroot\jekyll-pwsh\jekyll.psm1
}

if (Test-Path $gitroot\addlicense\AddLicense.psm1) {
	Import-Module $gitroot\addlicense\AddLicense.psm1
}

if (Test-Path $gitroot\winwal\winwal.psm1) {
	Import-Module $gitroot\winwal\winwal.psm1
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}

# Git Dot Files
function Update-Config {
	& git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $args
}

Set-Alias -Name config -Value Update-Config