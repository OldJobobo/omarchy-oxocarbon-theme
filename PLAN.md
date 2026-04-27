# PLAN - Carbonized Theme Revamp

This plan turns the `carbonized` branch into a fully Carbon-directed Omarchy theme while keeping the existing upstream PR branch intact.

## Phase 1 - Canonical Palette

- `colors.toml` is the canonical source. The Oxocarbon palette is not modified.
- Carbon role mapping of the Oxocarbon palette for use in all downstream files:
  - background: `#161616`
  - text primary: `#f2f4f8`
  - text secondary: `#dde1e6`
  - border subtle / dim: `#525252`
  - focus / interactive: `#78a9ff` / `#33b1ff`
  - info / teal: `#3ddbd9` / `#08bdba`
  - success: `#42be65`
  - error / warning: `#ff7eb6` / `#ee5396` (Oxocarbon pink tones; no true yellow)
  - purple accent: `#be95ff`
  - accent: `#42be65`

## Phase 2 - Terminal And Shell Exports

- Update `foot.ini`.
- Update `kitty.conf`.
- Update `ghostty.conf`.
- Update `alacritty.toml`.
- Update `colors.fish` and `fzf.fish`.
- Set terminal font to BlexMono Nerd Font as primary, IBM Plex Mono as secondary, Liberation Mono as final fallback.
- Decide once on opacity:
  - preferred: opaque Carbon surfaces
  - alternate: consistent subtle opacity across every supported terminal

## Phase 3 - Core Carbon UI Surfaces

- Rebuild `walker.css` using the `Breaking Bad` Carbon structure:
  - layer-01 container
  - layer-02 search field
  - compact rows
  - subtle separators
  - selected left rail
  - square corners
- Rebuild `swayosd.css` using the proven GTK selector pattern from `Breaking Bad` and `Kings`.
- Update `mako.ini` as a Carbon notification tile.
- Update `waybar.css` with restrained Carbon foreground/background variables.
- Apply consistent font stacks across CSS surfaces: BlexMono Nerd Font first, IBM Plex Sans second, Liberation Sans last.

## Phase 4 - Window And Lock Surfaces

- Update `hyprland.conf`:
  - square corners
  - two-pixel borders
  - restrained blue/cyan active border
  - subtle inactive border
  - Carbon easing curve
- Update `hyprlock.conf`:
  - dark Carbon surface
  - blue/cyan ring
  - readable primary text
  - semantic check color

## Phase 5 - Application Chrome

- Update `gtk.css` to map Carbon roles consistently.
- Add or update `aether.override.css` if needed for stronger GTK/Aether alignment.
- Update `vencord.theme.css`.
- Update `steam.css`.
- Update `zen.css`.
- Update `btop.theme`, `cava_theme`, `superfile.toml`, `zed.json`, and `vscode.json`.

## Phase 6 - Validation

- Validate Lua:
  - `neovim.lua` parses.
  - headless Neovim reports `oxocarbon` or the chosen Carbonized colorscheme.
- Validate JSON:
  - `custom_theme.json`
  - `zed.json`
  - `vscode.json`
- Smoke-check CSS surfaces manually:
  - Walker
  - SwayOSD
  - Vencord
  - GTK
  - Zen
  - Steam
- Apply or symlink the branch as an Omarchy theme and run `omarchy-theme-set carbonized`.
- Inspect terminals, Walker, Mako, SwayOSD, Hyprlock, Waybar, and Neovim.
