local lib = {};

function lib:Unlisted()
    return false
end;

local banned = {
    ""
};

function lib:Banned(player)
    for _, value in pairs(banned) do
        if player:IsA("Player") and player.Name == value then
            return true;
        end;
    end;
    
    return false;
end;

return lib;
