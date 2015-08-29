#!/bin/bash

read -p "Do you want to create gitconfig at $HOME/?(y/N)" ANS

if [ "$ANS" == "y" ]; then
	echo "What is your name?"
	while read name
	do
		if [ "$name" != "" ];then
		  break
		fi
		echo "Please input your name?"
	done

	echo "Your contract email?"
	while read email
	do
		if [ "$email" != "" ];then
		  break
		fi
		echo "Please input your email?"
	done

	echo "[user]
	name = $name
	email = $email
[color]
	diff = auto
	status = auto
	branch = auto
	log = auto
[core]
	autocrlf = input
[log]
	abbrevCommit = true
[push]
	default = simple" > ~/.gitconfig
else
  echo "Skeep this"
fi

# if already has .vimrc, backup it
if [ -f ~/.vimrc ]
  then
  mv ~/.vimrc ~/.vimrc_bak
fi

# copy vim files to $HOME folder
cp .vimrc ~/.vimrc
cp -r .vim/ ~/
