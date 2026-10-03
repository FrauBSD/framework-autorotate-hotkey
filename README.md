[//]: # ($FrauBSD: framework-autorotate-hotkey/README.md 2026-10-04 12:17:11 -0700 Devin Teske $)

# framework-autorotate-hotkey

`Super+R` turns screen auto-rotation on or off on the Framework
Laptop 12.

One [bhotkeys](https://github.com/FrauBSD/bhotkeys) plugin that runs
`auto-rotate-toggle` from
[framework-autorotate](https://github.com/FrauBSD/framework-autorotate).
It is a separate package because neither of those owns it:
framework-autorotate does not depend on bhotkeys, and bhotkeys ships
no actions. It is available at the greeter, so a convertible can be
set to follow or ignore the sensor before login. Under KDE and Xfce
the chord is `Super+O`, because both bind `Super+R`.

Home: [FrauBSD/framework-autorotate-hotkey](https://github.com/FrauBSD/framework-autorotate-hotkey)

## Requirements

- `bhotkeys`
- `framework-autorotate` for `auto-rotate-toggle`
- A Framework Laptop 12; other machines have nothing to rotate

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs `rotate` into `${PREFIX}/share/bhotkeys/plugins.d`.

## Plugin

```
id rotate
label Auto rotate
chord Super+r
chord Super+o kde xfce
command auto-rotate-toggle
greeter 1
```
