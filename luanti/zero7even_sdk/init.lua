local z7 = assert(rawget(_G, "zero7even"), "zero7even_core is required")

z7.sdk = z7.sdk or {
    version = "0.1.0-dev",
}

function z7.sdk.service(name)
    return z7.get_service(name)
end

function z7.sdk.require(name)
    return z7.require_service(name)
end

z7.register_service("sdk", z7.sdk)
z7.log("action", "zero7even_sdk initialized")
