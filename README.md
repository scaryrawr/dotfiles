# Dot Files

These are my dot files.

Was following this tutorial: [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)


## Quickly Setting Up (Possibly destructive)

In the documentation from atlassian, they try to do a `config checkout .` which ends up causing issues if you have files existing with the same name.

It looks like that whatever the state of your home directory it believes that you already have those changes staged. By doing a reset and then checkout,
you can just have it believe everything is locally modified and then abandoning those changes.

```sh
git clone --bare git@github.com:scaryrawr/dotfiles $HOME/.dotfiles
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config reset
config checkout .
```
