# Dotfiles

My config files

This project is based on the [Best way to manage your dotfiles
](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)

## Close dotfiles on another machine

### 1. Define alias
```bash
$ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

### 2.Clone repo
```bash
$ git clone --base git@github.com:mluksic/github-activity.git $HOME/.dotfiles
```

### 3. Adjust config
```bash
$ dotfiles config --local status.showUntrackedFiles no
```

### 4. Checkout
```bash
$ dotfiles checkout
```

## Authors

👤 **Miha Luksic**

