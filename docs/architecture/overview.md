# Architecture Overview

Zero7even Services is the Luanti-facing integration layer of the Zero7even Platform.

## Boundaries

- **Zero7even Platform API** owns durable platform state and authorization.
- **zero7even_bridge** owns transport and server authentication.
- **service mods** expose focused capabilities such as identity, economy, and entitlements.
- **zero7even_sdk** is the stable developer-facing entry point.
- **gameplay mods** should not embed platform credentials or call privileged platform endpoints directly.

## Request flow

```text
Gameplay Mod
    ↓
zero7even_sdk
    ↓
Service module
    ↓
zero7even_bridge
    ↓ HTTPS
Zero7even Platform API
```

## Threading rule

Luanti gameplay callbacks must stay lightweight. Network operations must be asynchronous and must never block the server thread while waiting for the Zero7even Platform API.

## Authority rule

The client is never trusted to authorize platform operations. Sensitive actions are validated by the Luanti server and ultimately by Zero7even Platform permissions.
