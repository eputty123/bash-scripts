#!/bin/sh
i=1
b=$(ls -p ~/.local/share/Steam/steamapps/common/| grep  / | wc -l )
while [[ $i -le $b ]] ; do
a=$(ls -p $HOME/.local/share/Steam/steamapps/common/ | grep / | tail -n $i | head -n 1 | sed 's/\/$//')
	ln -s -v $HOME/.config/dxvk.conf "$HOME/.local/share/Steam/steamapps/common/$a/dxvk.conf"
	#echo $i $a
	(( i += 1 ))
done
