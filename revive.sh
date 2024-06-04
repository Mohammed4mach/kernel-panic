#!/usr/bin/sh

# Query dependencies and packages, then store them
pacman -Qqdn > pkglist_deps.txt
pacman -Qqen > pkglist_exp.txt

pacman --asdeps -S $(< pkglist_deps.txt)
pacman -S $(< pkglist_exp.txt)

