# .dotfiles

## Installation

### Local machines

```
git clone git@github.com:kierantbrowne/dotfiles.git
source dotfiles/install.sh
```

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:
```
sh -c "`curl -fsSL https://raw.github.com/kierantbrowne/dotfiles/master/remote-install.sh`"
```

Or, using wget:
```
sh -c "`wget -O --no-check-certificate https://raw.githubusercontent.com/kierantbrowne/dotfiles/master/remote-install.sh`"
```

Or, for an ultra-minimal install (say on an old server):
```
wget - --no-check-certificate -O ~/.vimrc https://raw.githubusercontent.com/kierantbrowne/dotfiles/master/vimrc
```

Replace bad vim with good vim:
```
sh -c "`wget -O --no-check-certificate https://raw.githubusercontent.com/kierantbrowne/dotfiles/master/remote-install-vim.sh`"
```

## Credit where credit is due

I've taken as many
Check out the great work of 
[@webpro](https://github.com/webpro/dotfiles)
[@benswift](https://github.com/benswift/.dotfiles)
