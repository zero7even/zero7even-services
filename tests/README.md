# Tests

Cross-module, protocol, and compatibility tests belong here.

Service-specific tests may also live beside their modules when that keeps ownership clearer.

## Smoke tests

The initial service-registry smoke test is:

```text
tests/smoke/service-registry.lua
```

It provides a minimal fake `minetest` environment and validates the core service registry without starting a full Luanti server.

When Lua is available from the repository root:

```bash
lua tests/smoke/service-registry.lua
```

Future integration tests should cover real Luanti loading, bridge transport, protocol compatibility, and service interactions.
