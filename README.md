# Dotfiles Repo

All my configuration files and scripts for my development environment. Curated personal toolkit to make my life easier.

## Getting Started

To get your hands on my dotfiles, just clone this repo and use GNU Stow to symlink the configuration files you want.

### Clone the Repo
```bash
git clone https://github.com/ahmedzzyy/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Stow Your Dotfiles
You can stow the dotfiles for specific applications like this:
```bash
# For example, to stow your bash configuration:
stow bash

# Or stow your nvim config:
stow nvim
```

### Frequently Used Commands
(Frequent Look up)
- Stow a specific package:
```bash
stow <package_name>
```
- Unstow a package:
```bash
stow -D <package_name>
```
- List all symlinked files:
```bash
ls -la ~/.config/
```
- Check the status of the repository:
```bash
git status
```

## To future me

Feel free to modify these dotfiles to suit your needs! Just make sure to back up any existing configurations before stowing new ones.

## Contributions

If you have suggestions or want to share your own dotfiles setup, hit me up with a pull request or an issue. I’m always open to improving this repo!

Happy customizing! :))
