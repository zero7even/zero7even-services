# Versioning

Zero7even Services uses semantic versioning for public service APIs.

## Service versions

Each service may evolve independently.

Example:

```text
zero7even_core         0.1.0-dev
zero7even_bridge       0.1.0-dev
zero7even_economy      0.1.0-dev
```

A monorepo commit does not force every service to receive a new version.

## Protocol version

The bridge/platform protocol has its own version stored in:

`shared/protocol/protocol-version.json`

Protocol compatibility is independent from the version of any single Luanti mod.

## Pre-1.0 policy

Until 1.0.0, public SDK interfaces may change. Breaking changes should still be documented and coordinated across the SDK, bridge, and Platform API.

## Stable releases

After 1.0.0:

- PATCH: compatible bug fixes
- MINOR: backward-compatible capabilities
- MAJOR: breaking public SDK or protocol changes
