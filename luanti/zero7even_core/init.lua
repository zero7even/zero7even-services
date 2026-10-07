local MODNAME = minetest.get_current_modname()

local z7 = rawget(_G, "zero7even") or {}
_G.zero7even = z7

z7.version = z7.version or "0.1.0-dev"
z7.services = z7.services or {}

local function log(level, message)
    minetest.log(level, ("[%s] %s"):format(MODNAME, message))
end

function z7.register_service(name, api)
    assert(type(name) == "string" and name ~= "", "service name is required")
    assert(type(api) == "table", "service API must be a table")
    assert(z7.services[name] == nil, "service already registered: " .. name)

    z7.services[name] = api
    log("action", "registered service: " .. name)
    return api
end

function z7.get_service(name)
    return z7.services[name]
end

function z7.require_service(name)
    local service = z7.get_service(name)
    assert(service ~= nil, "required Zero7even service is unavailable: " .. tostring(name))
    return service
end

z7.log = z7.log or log

z7.register_service("core", {
    version = z7.version,
})

log("action", "Zero7even core initialized")
