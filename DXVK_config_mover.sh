#!/bin/sh
cd "$HOME/.local/share/Steam/steamapps/common"
for game in *; do
	if [ ! -d "$game" ]; then continue; fi
	ln -sv "$HOME/.config/dxvk.conf" "$game/dxvk.conf"
done
