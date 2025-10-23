# 🌌 Hyprland Dotfiles

## 🚀 Getting Started

1. Clone the repo:
   ```bash
     git clone https://github.com/yourusername/hyprland-dotfiles ~/.config/hyprland-dotfiles
   ```

2. Link config directories
   > ⚠️ If you already have configs in `~/.config/hypr`, `kitty`, etc., back them up or remove them before linking.
   ```bash
     ln -s ~/.config/hyprland-dotfiles/hypr ~/.config/hypr
     ln -s ~/.config/hyprland-dotfiles/kitty ~/.config/kitty
     ln -s ~/.config/hyprland-dotfiles/swaync ~/.config/swaync
     ln -s ~/.config/hyprland-dotfiles/waybar ~/.config/waybar
     ln -s ~/.config/hyprland-dotfiles/wlogout ~/.config/wlogout
     ln -s ~/.config/hyprland-dotfiles/wofi ~/.config/wofi
   ```

3. Installing dependencies
   ``` bash
     sudo pacman -S hyprland hyprlock kitty swaync waybar wlogout wofi ttf-jetbrains-mono-nerd
   ```

4. Reload Hyprland
   ```bash
     hyprctl reload
   ```

5. Customize
  Fonts, colors, and keybindings are yours to tweak.
