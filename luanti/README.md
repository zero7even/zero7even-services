# Zero7even Luanti Services

This directory contains the official Zero7even service modpack for Luanti.

## Initial modules

```text
zero7even_core
zero7even_bridge
zero7even_sdk
zero7even_identity
zero7even_sessions
zero7even_permissions
zero7even_economy
zero7even_entitlements
zero7even_servers
zero7even_ui
```

## Dependency direction

```text
Gameplay / Experience Mods
          ↓
    zero7even_sdk
          ↓
 Zero7even service modules
          ↓
   zero7even_bridge
          ↓
 Zero7even Platform API
```

`zero7even_core` provides the internal service registry and shared runtime helpers.

`zero7even_bridge` will own HTTP transport, authentication, retry policy, timeouts, and server credentials.

`zero7even_sdk` is the intended public developer-facing integration surface.

## Installation

The directory is structured as a Luanti modpack. During development, install or link the `luanti/` directory into the server's mod location and enable the required services for the world/Experience.

Exact deployment and configuration steps will be documented when the first bridge contract is implemented.

## Security

Never place platform credentials in gameplay mods or client-distributed content.
