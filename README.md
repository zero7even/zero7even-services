# Zero7even Services

Official service layer and Luanti integration SDK for the Zero7even Platform.

This repository is a monorepo for the reusable services that connect Luanti Experiences to Zero7even Platform capabilities such as identity, sessions, permissions, economy, entitlements, server registration, and shared UI.

## Repository layout

```text
zero7even-services/
├── docs/                 Architecture, API, security, and SDK documentation
├── luanti/               Official Luanti service mods and SDK
├── shared/               Shared schemas, protocol contracts, and constants
├── tools/                Development and validation tooling
├── examples/             Minimal integration examples
└── tests/                Cross-module and compatibility tests
```

## Initial Luanti service modules

- `zero7even_core` — shared runtime, logging, events, configuration, and internal service registry
- `zero7even_bridge` — trusted server-to-platform transport layer
- `zero7even_sdk` — stable developer-facing API
- `zero7even_identity` — Zero7even account identity and player binding
- `zero7even_sessions` — player/server session lifecycle
- `zero7even_permissions` — platform and server capability checks
- `zero7even_economy` — Coins, Shards, and Experience-scoped Money integration
- `zero7even_entitlements` — VIP, badges, cosmetics, and access entitlements
- `zero7even_servers` — server registration, heartbeat, and platform metadata
- `zero7even_ui` — shared Luanti UI helpers for official services

## Architecture rule

Gameplay mods should use `zero7even_sdk` rather than calling the Zero7even HTTP API directly.

```text
Experience / Gameplay Mod
          ↓
    zero7even_sdk
          ↓
 Zero7even service mods
          ↓
   zero7even_bridge
          ↓
 Zero7even Platform API
```

The bridge owns transport/authentication concerns. Financial and authorization decisions remain server/platform authoritative.

## Status

Early architecture and module scaffolding. Interfaces may change until the first SDK contract is frozen.
