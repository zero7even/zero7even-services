local z7 = assert(rawget(_G, "zero7even"), "Zero7even SDK is not available")

local sdk = assert(z7.sdk, "zero7even_sdk is required")

minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    local identity = sdk.service("identity")

    if identity then
        z7.log("action", ("basic-sdk example: %s joined; identity service available"):format(name))
    else
        z7.log("warning", ("basic-sdk example: %s joined; identity service unavailable"):format(name))
    end
end)
