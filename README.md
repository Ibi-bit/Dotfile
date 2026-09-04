# Dotfile Dependencies

This setup is built for a Hyprland-based Linux desktop.

## New to Hyprland?
If you are just starting with Hyprland, use this flow:
1. Install the dependencies below.
2. Start Hyprland and confirm you can open apps with `SUPER + D` (app launcher) and `SUPER + Return` (terminal).
3. Adjust only `shared.lua` first to set your preferred terminal, file manager, and launcher.
4. Then customize one file at a time using the config map in this README.

`SUPER` is the main modifier key used in shortcuts below (usually the Windows key).

## Core packages
- hyprland
- hyprlock
- hyprpaper
- waybar
- kitty
- rofi
- thunar
- dunst
- wlogout
- network-manager-applet (`nm-applet`)
- network-manager-gnome (`nm-connection-editor`)
- blueman (`blueman-manager`)

## CLI tools used by keybindings/modules
- xdg-utils (`xdg-open`)
- hyprshot
- grimblast
- brightnessctl
- playerctl
- wireplumber (`wpctl`)
- pamixer
- pulseaudio-utils or pipewire-pulse (`pactl`)
- wf-recorder
- btop
- x-terminal-emulator

## Extra tools referenced in Waybar
- waybar-lyric
- wttrbar
- wiremix

## Apps referenced by startup/rules
- spotify
- firefox

## Fonts
- JetBrainsMono Nerd Font

## Daily shortcut cheat sheet
### Launching and session
- `SUPER + D` → app launcher (`rofi`)
- `SUPER + Return` → terminal
- `SUPER + E` → file manager
- `CTRL + ALT + L` → lock screen
- `CTRL + ALT + P` → logout menu

### Windows
- `SUPER + Q` → close window
- `SUPER + SHIFT + F` → fullscreen toggle
- `SUPER + SPACE` → float toggle
- `SUPER + Arrow keys` → move focus
- `SUPER + SHIFT + Arrow keys` → resize window
- `SUPER + CTRL + Arrow keys` → move window

### Workspaces
- `SUPER + 1..0` → switch to workspace 1..10
- `SUPER + SHIFT + 1..0` → move active window to workspace and follow
- `SUPER + U` → toggle special scratch workspace
- `SUPER + S` → toggle special spotify workspace

### Screenshot and media keys
- `Print` → screenshot output
- `SUPER + SHIFT + S` → area screenshot to clipboard
- Audio and brightness hardware keys are enabled by default

## Hyprland config map (where to edit what)
- `.config/hypr/shared.lua` → change terminal, launcher, file manager, and main modifier key
- `.config/hypr/keybindings.lua` → add/remove keyboard shortcuts
- `.config/hypr/monitors.lua` → monitor layout and mirroring
- `.config/hypr/look_and_feel.lua` → gaps, borders, animations, visual style
- `.config/hypr/input.lua` → keyboard/mouse/touchpad behavior
- `.config/hypr/startup.lua` → apps that launch on Hyprland startup
- `.config/hypr/rules.lua` → per-app window behavior rules
