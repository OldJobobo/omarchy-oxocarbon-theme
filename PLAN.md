# PLAN - Carbonized Theme Revamp

This plan turns the `carbonized` branch into a fully Carbon-directed Omarchy theme while keeping the existing upstream PR branch intact.

## Phase 1 - Canonical Palette

- Rewrite `colors.toml` as the canonical Carbon role map.
- Preserve Oxocarbon identity where it helps: cyan, blue, green, magenta, and high-contrast dark neutrals.
- Assign explicit semantic roles:
  - focus / interactive
  - success
  - warning
  - error
  - info
  - text primary
  - text secondary
  - border subtle
  - border strong
- Avoid letting ANSI color order drive UI meaning.

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


## Phase 7 - Validation

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



