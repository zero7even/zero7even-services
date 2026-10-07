-- Minimal smoke test for zero7even_core without a running Luanti server.

local logs = {}

minetest = {
    get_current_modname = function()
        return "zero7even_core"
    end,
    log = function(level, message)
        logs[#logs + 1] = { level = level, message = message }
    end,
}

dofile("luanti/zero7even_core/init.lua")

assert(type(zero7even) == "table")
assert(type(zero7even.register_service) == "function")
assert(type(zero7even.get_service) == "function")
assert(type(zero7even.require_service) == "function")
assert(zero7even.get_service("core") ~= nil)

local demo = { ok = true }
zero7even.register_service("test_service", demo)

assert(zero7even.get_service("test_service") == demo)
assert(zero7even.require_service("test_service") == demo)

local ok = pcall(function()
    zero7even.register_service("test_service", {})
end)

assert(ok == false, "duplicate service registration must fail")

print("service-registry smoke test passed")
