# Service Boundaries

The goal of the service split is to keep transport, authority, platform state, and gameplay concerns separate.

## zero7even_core

Owns shared runtime primitives, logging, service registration, and low-level helpers.

Must not contain gameplay-specific business logic.

## zero7even_bridge

Owns trusted server-to-platform communication:

- HTTP transport
- server authentication
- request signing when introduced
- timeouts
- retry policy
- transport-level serialization
- asynchronous request execution

Other service mods should not implement independent privileged HTTP clients.

## zero7even_sdk

Developer-facing API.

Gameplay mods should integrate through the SDK instead of depending on internal transport details.

## Identity and sessions

`zero7even_identity` maps a connected Luanti player to a validated Zero7even account context.

`zero7even_sessions` manages lifecycle state such as join, leave, reconnect, and server session state.

## Permissions

`zero7even_permissions` exposes capability checks for operations granted to the current registered server.

Frontend or gameplay-side checks are convenience only. The Platform backend remains authoritative.

## Economy

`zero7even_economy` exposes Coins, Shards, and Experience-scoped Money through approved SDK operations.

It must never maintain an independent authoritative platform balance.

## Entitlements

`zero7even_entitlements` exposes validated account access such as VIP, badges, cosmetics, and Experience access.

## Servers

`zero7even_servers` handles server registration state, heartbeat, platform metadata, and future presence/discovery integration.

## UI

`zero7even_ui` provides reusable Luanti UI helpers for official services. It must not become the authority for identity, economy, or permissions.

## Authority

The Zero7even Platform backend owns durable account, economy, entitlement, and permission state.
