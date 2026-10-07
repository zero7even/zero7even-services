# Contributing to Zero7even Services

Zero7even Services is a modular Luanti integration layer for the Zero7even Platform.

## Principles

- Keep each service focused on one responsibility.
- Gameplay mods should depend on `zero7even_sdk`, not privileged Platform HTTP endpoints.
- Transport, authentication, retries, and server credentials belong in `zero7even_bridge`.
- Never block Luanti's server thread while waiting for network I/O.
- Never commit secrets, API keys, production URLs with credentials, or private certificates.
- Preserve backward compatibility once an SDK contract is marked stable.

## Changes

1. Keep changes scoped to one service or one cross-service contract where practical.
2. Update documentation when a public SDK contract changes.
3. Add or update tests for behavior changes.
4. Record user-visible changes in `CHANGELOG.md`.
5. Follow `VERSIONING.md` for service and protocol versioning.

## Service naming

Official Luanti services use the `zero7even_` prefix.
