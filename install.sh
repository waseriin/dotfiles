#!/bin/bash

DOTPATH=~/.dotfiles

# deploy dotfiles
for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

# distro-specific
case ${OSTYPE} in
	darwin*)
		;;
	linux*)
		if [ -e /etc/debian_version ] || [ -e /etc/debian_release ]; then
			if [ -e /etc/lsb-release ]; then
				echo "running Ubuntu"
			else
				echo "running Debian"
			fi
		elif [ -e /etc/fedora-release ]; then
			echo "running Fedora"
		elif [ -e /etc/redhat-release ]; then
			if [ -e /etc/oracle-release ]; then
				echo "running Oracle Linux"
			else
				echo "running RedHat Enterprise Linux"
			fi
		elif [ -e /etc/turbolinux-release ]; then
			echo "running Turbolinux"
		elif [ -e /etc/SuSE-release ]; then
			echo "SuSE Linux"
		elif [ -e /etc/manjaro-release ]; then
			echo "running Manjaro"
		fi
		;;
esac

# install dein for neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o ~/installer.sh
sh ~/installer.sh ~/.cache/dein
rm ~/installer.sh

