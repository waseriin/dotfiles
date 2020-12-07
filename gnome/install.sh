#!/bin/sh
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.desktop.session idle-delay 'uint32 0'
 
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.desktop.interface gtk-key-theme Emacs

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 '["<Alt>1"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 '["<Alt>2"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 '["<Alt>3"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 '["<Alt>4"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 '["<Alt>5"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 '["<Alt>6"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 '["<Alt>7"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 '["<Alt>8"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 '["<Alt>9"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 '["<Alt>0"]'

gsettings set org.gnome.desktop.wm.keybindings switch-applications '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-windows '["<Alt>Tab"]'

