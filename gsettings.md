gsettings set org.gnome.nautilus.window-state initial-size '(1920, 470)'
gsettings get org.gnome.Console.window-state initial-size '(1920, 470)'

gsettings list-schemas | grep "^org.gnome"

gsettings reset org.gnome.mutter.keybindings toggle-tiled-left
