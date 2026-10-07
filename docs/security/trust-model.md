# Trust Model

## Trusted components

- Zero7even Platform backend
- Registered Zero7even server bridge
- Server-side Luanti service mods

## Untrusted inputs

- Client-provided account claims
- Client-provided balances
- Client-provided entitlements
- Client-provided server permissions
- Arbitrary gameplay mod requests

## Credentials

Platform/server secrets must never be committed to this repository.

The bridge is the only service module that should need transport credentials. Other modules call the bridge through an internal API.

## Economy

A Luanti server may only perform economy operations explicitly granted to that server by the Zero7even Platform. COIN and SHARD access is denied by default. Experience MONEY remains scoped to its owning Experience.
