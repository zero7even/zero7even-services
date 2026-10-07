# Server Authentication

This document defines the security direction for trusted Luanti servers connecting to the Zero7even Platform.

The first production authentication protocol is not frozen yet.

## Requirements

The final design must provide:

- a unique server identity
- credentials scoped to a registered server
- revocation
- rotation
- least-privilege permissions
- request attribution
- replay resistance for sensitive operations
- auditable authentication failures

## Secret handling

Server credentials must:

- never be committed to Git
- never be exposed to clients
- never be stored in public gameplay packages
- be loaded from server-side configuration or secret storage
- be rotatable without rebuilding an Experience

## Bridge ownership

Only `zero7even_bridge` should need direct access to transport credentials.

Gameplay mods and higher-level service mods call the bridge through internal APIs.

## Failure behavior

Authentication failure must fail closed for privileged operations.

A temporary Platform outage must not cause the Luanti server thread to block indefinitely. Network requests must use bounded timeouts and asynchronous execution.

## Future protocol

Possible mechanisms include signed requests or scoped server tokens. The exact mechanism must be designed together with the Zero7even Platform API before implementation.
