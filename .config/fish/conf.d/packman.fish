if type -q dnf
  alias dnfl="dnf list"                       # List packages
  alias dnfli="dnf list installed"            # List installed packages
  alias dnfgl="dnf grouplist"                 # List package groups
  alias dnfmc="dnf makecache"                 # Generate metadata cache
  alias dnfp="dnf info"                       # Show package information
  alias dnfs="dnf search"                     # Search package

  alias dnfu="sudo dnf --setopt=install_weak_deps=False upgrade"               # Upgrade package
  alias dnfi="sudo dnf --setopt=install_weak_deps=False install"               # Install package
  alias dnfgi="sudo dnf --setopt=install_weak_deps=False groupinstall"         # Install package group
  alias dnfr="sudo dnf remove"                # Remove package
  alias dnfgr="sudo dnf groupremove"          # Remove package group
  alias dnfc="sudo dnf clean all"             # Clean cache
end

if type -q apt
  alias acs="apt search"
  alias agi="sudo apt install"
  alias aguu="sudo apt update && sudo apt upgrade"
end

if type -q pacman
  alias paci="sudo pacman -S"
  alias pacr="sudo pacman -Rs"
  alias pacs="pacman -Ss"
  alias pacu="sudo pacman -Syu"
end

if type -q yay
  alias yayi="yay -S"
  alias yayr="yay -Rs"
  alias yays="yay -Ss"
  alias yayu="yay -Syu"
end
