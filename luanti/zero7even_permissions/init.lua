local z7 = assert(rawget(_G, "zero7even"), "zero7even_core is required")

local permissions = {
    version = "0.1.0-dev",
}

z7.register_service("permissions", permissions)
z7.log("action", "zero7even_permissions loaded")
