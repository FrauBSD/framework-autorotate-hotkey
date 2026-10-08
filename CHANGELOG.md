[//]: # ($FrauBSD: framework-autorotate-hotkey/CHANGELOG.md 2026-10-07 20:32:10 -0700 Devin Teske $)

# Changelog

Newest first. Each section is a git tag; the bullets are what landed
in that tag (from the previous tag, or from the start of the
repository for 1.0).

## 1.2 (2026-10-07)

- `auto-rotate-enable` and `auto-rotate-disable` run
  `framework_autorotate -release` and `-hold`, then
  `auto-rotate-osd`
- `auto-rotate-toggle` shows on or off with `auto-rotate-osd`
- `auto-rotate-osd` shows on or off with `bosd`
- man pages for `auto-rotate-enable`, `auto-rotate-disable`, and
  `auto-rotate-osd`

## 1.1 (2026-10-05)

- man page for `auto-rotate-toggle`

## 1.0 (2026-10-03)

- `rotate` plugin: Super+R runs auto-rotate-toggle; Super+O under KDE
  and Xfce; offered at the greeter
- `auto-rotate-toggle` runs `framework_autorotate -release` or
  `-hold`, then shows the glyph with `bosd`
