# Dotfiles Repo

To future me,

Welcome to my dotfiles repo! 🎉

This is where I stash all my configuration files and scripts to keep my development environment neat and tidy. Think of it as a personal toolkit to make my life easier (and maybe yours, too!). By using GNU Stow, I can effortlessly manage and symlink all my dotfiles without the usual hassle.

## Why Dotfiles?

Dotfiles are configuration files for your shell, editor, and other applications. This repo is my way of keeping my setup consistent across different machines

## Getting Started

To get your hands on my dotfiles, just clone this repo and use GNU Stow to symlink the configuration files you want. Here’s how:

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

## Customizing Your Setup

Feel free to modify these dotfiles to suit your needs! Just make sure to back up any existing configurations before stowing new ones.

## Contributions

If you have suggestions or want to share your own dotfiles setup, hit me up with a pull request or an issue. I’m always open to improving this repo!

Happy customizing! 🚀
