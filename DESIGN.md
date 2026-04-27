# DESIGN - Carbonized

Carbonized is an Omarchy theme that treats IBM Carbon Design as the source language and Oxocarbon as the editor-facing anchor. The goal is not to copy a web component library into a desktop theme. The goal is to translate Carbon's discipline into the surfaces Omarchy can actually control: palette, terminals, launcher, notifications, OSD, lockscreen, GTK chrome, Discord, and editor mappings.

The interface should feel like a dark product system: exact, layered, readable, and quiet under load.

## Design Rules

- Corners are square. Radius is `0` unless an application surface forces otherwise.
- Layering is structural, not decorative: background, layer-01, layer-02, field, border.
- Selection is shown with a left rail or focus outline, not bold text or glow.
- Blue and cyan carry interaction and focus.
- Green, yellow, and red keep their support roles: success, warning, error.
- Motion is short and settled. Use `0.4, 0, 0.2, 1`; no bounce, spring, or looping spectacle.
- Typography targets BlexMono Nerd Font for monospaced surfaces, IBM Plex Sans for UI text, and Liberation Sans as the final fallback before system sans.
- UI density should be professional and scannable. No hero styling inside tool surfaces.

## Palette Model

The canonical palette belongs in `colors.toml`. Every other file should derive from the same role map.

| Role | Target |
| --- | --- |
| Background | Carbon Gray 100 / near `#161616` |
| Layer 01 | lifted dark surface, near `#262626` |
| Layer 02 | stronger surface / field, near `#393939` |
| Border subtle | gray divider, near `#393939` or `#525252` |
| Border strong | focus edge, IBM blue or Oxocarbon cyan-blue |
| Text primary | near `#f4f4f4` |
| Text secondary | near `#c6c6c6` |
| Focus / interactive | IBM blue `#0f62fe`, Oxocarbon blue/cyan as needed |
| Info | `#78a9ff` / `#33b1ff` |
| Success | `#42be65` |
| Warning | `#f1c21b` |
| Error | `#ff8389` |

The current Oxocarbon palette is close enough to preserve as the theme's DNA, but the final mapping should be role-first rather than ANSI-first.

## Reference Themes

`Breaking Bad` provides the closest technical precedent:

- Carbon-like layer model in `walker.css`
- selected rows with an inset left rail
- square OSD and notification treatment
- disciplined semantic colors
- Carbon-like Hyprland motion curve

`Kings` provides the completeness pattern:

- richer state coverage in Walker
- terminal opacity consistency across supported terminals
- broad GTK and Aether variable mapping
- polished `logo.txt` / `sig.txt` delivery
- stamped-file workflow for release-quality theme files

Carbonized should use `Breaking Bad` for structural Carbon behavior and `Kings` for finishing depth.

## Surface Direction

### Terminals

Default target: opaque, high-contrast Carbon surfaces.

If transparency is used, it must be consistent across Foot, Kitty, Ghostty, and Alacritty. Do not let one terminal become glassy while the others remain solid.

### Walker

Walker is the most important Carbon surface.

- container: layer-01 over background
- search strip: layer-02 / field
- rows: compact, divided by subtle borders
- hover: layer-hover
- selected: selected layer plus `inset 3px 0 0` focus rail
- keybind chips: field surface with subtle border
- no rounded cards

### SwayOSD

SwayOSD should read as an instrument panel.

Use the proven GTK selector structure from `Breaking Bad` and `Kings`: style `window` and `#container`, set stable icon and label spacing, give the label a fixed minimum width, and style `progressbar`, `trough`, and `progress` explicitly.

### Mako

Notifications should be terse Carbon tiles:

- dark background
- strong readable text
- 2px semantic border
- top-right anchor
- no decorative radius

### Hyprland

Keep changes theme-scoped.

- `rounding = 0`
- `border_size = 2`
- active border uses a restrained blue/cyan gradient
- inactive border is subtle gray alpha
- animation curve uses `0.4, 0, 0.2, 1`

### Hyprlock

Use Carbon focus language:

- dark background / translucent inner color
- blue/cyan outer ring
- primary text in foreground
- success/check color in green or cyan, not arbitrary accent drift

### GTK / Aether / App Chrome

GTK and Aether should map Carbon roles directly:

- background and window surfaces to background/layer roles
- selected state to interactive/focus
- destructive/success/warning/error to support colors
- borders to subtle gray, not accent everywhere

### Neovim

Keep the `oxocarbon.nvim` LazyVim fix unless exact token control becomes more important than upstream Oxocarbon fidelity. If that happens, use the Aether pattern from `Kings` and `Breaking Bad` with explicit Carbon tokens.

## Out Of Scope

Carbonized stays inside a normal Omarchy theme directory. It should not require shell architecture changes, AGS widget behavior changes, custom Waybar module logic, or global config edits outside the theme.

