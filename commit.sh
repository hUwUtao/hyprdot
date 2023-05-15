[[ ! -d "upload/.config" ]] && mkdir upload/.config -p
cp -rv hypr btop cava starship.toml waybar wallpaper fish kitty rofi dunst upload/.config
mkdir -p upload/.config/nvim/lua/custom/themes
cp -rv nvim/lua/custom/themes/* upload/.config/nvim/lua/custom/themes
