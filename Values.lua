local lib = {};

function lib:Unlisted()
    return false;
end;

local banned = {
    "xXHypnOgErXx"
};

function lib:Banned(player)
    for _, value in pairs(banned) do
        if player.Name == value then
            return true;
        end;
    end;
    
    return false;
end;
