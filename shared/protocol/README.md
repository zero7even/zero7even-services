# Protocol Contracts

Shared protocol definitions between Luanti services and the Zero7even Platform belong here.

## Version

The current protocol version is declared in:

`protocol-version.json`

This version is independent from individual Luanti service versions.

## Rules

- Version protocol changes explicitly.
- Keep payload contracts centralized.
- Do not duplicate HTTP payload shapes independently across service mods.
- Coordinate breaking protocol changes across `zero7even_bridge`, `zero7even_sdk`, and `zero7even-platform-api`.
- Treat the protocol as unstable until the first stable SDK release.
