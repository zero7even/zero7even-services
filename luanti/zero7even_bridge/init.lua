local z7 = assert(rawget(_G, "zero7even"), "zero7even_core is required")

local bridge = {
    version = "0.1.0-dev",
    ready = false,
}

function bridge.is_ready()
    return bridge.ready
end

z7.register_service("bridge", bridge)
z7.log("action", "zero7even_bridge loaded (transport not configured yet)")
