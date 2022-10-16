local lib = {};

function lib:Unlisted()
    return false;
end;

local whiteListed = {
    "xXHypnOgErXx",
    "P99syBoy"
};

local banned = {
    ""
};

function lib:Whitelisted(player)
    for _, value in pairs(whiteListed) do
        if player:IsA("Player") and player.Name == value then
            return true;
        end;
    end;
    
    return false;
end;

function lib:Banned(player)
    for _, value in pairs(banned) do
        if player:IsA("Player") and player.UserId == value then
            return true;
        end;
    end;
    
    return false;
end;

return lib;
