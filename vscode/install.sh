#!/bin/sh

PWD=$(cd $(dirname $0) && pwd)
TARGET_DIR=~/.config/Code/User

rm "$TARGET_DIR/settings.json"
ln -snvf "$PWD/settings.json" "${TARGET_DIR}/settings.json"

rm "$TARGET_DIR/keybindings.json"
ln -snvf "$PWD/keybindings.json" "${TARGET_DIR}/keybindings.json"

cat extensions | while read line
do
  code --install-extension $line
done

code --list-extensions > extensions

