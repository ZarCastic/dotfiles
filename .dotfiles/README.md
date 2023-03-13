# DOTS

Easy way to share dotfiles between different machines.

For easy installation, run

    git clone --bare https://github.com/ZarCastic/dotfiles.git $HOME/.dotfiles
    alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
    dots config status.showUntrackedFiles no
    dots checkout

If the last step failes, consider backing up your existing configs and run the line again.

Also, consider updating the remote to point to your dotfiles repository, if you want to share your own dotfiles.

    dots remote set-url origin <your repo url>

# How to use

Use the aliased `dots` command to add, commit and push/pull files from your repository.
