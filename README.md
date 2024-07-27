# dotfiles

All my dotfiles. Contains:

* neovim (.config/nvim)

Works on bash (WSL Ubuntu) at minimum. Use at your own risk.

## Installation

Idea: use a bare repository (https://www.atlassian.com/git/tutorials/dotfiles).

0. Make `cfg` alias, if not already existing.

  ```
  alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  echo "alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
  ```

1. Clone bare repo into `$HOME`. Turn off untracked files for sanity.

  ```
  git clone --bare git@github.com:Golf0ned/dotfiles.git $HOME/.cfg
  cfg config --local status.showUntrackedFiles no
  ```

2. Checkout to `$HOME`. If there are conflicts, handle them accordingly and recheckout.

  ```
  cfg checkout
  ```

From here, use `cfg` as a replacement for `git` to add and update dotfiles. If you are not me, pls do not doing.
