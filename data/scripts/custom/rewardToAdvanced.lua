local crystal = 3043
local storage = 6095789
local storage2 = 6095790
local storage3 = 6095791

function onAdvance(player, skill, oldlevel, newlevel)
    if skill ~= SKILL__LEVEL then
        return true
    end

    if newlevel >= 30  and player:getStorageValue(storage) ~= 10 then
        player:setStorageValue(storage, 10)
        player:setBankBalance(player:getBankBalance() + 10000)
        player:addItem(crystal, 1)
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You receive 1 crystal coin in your bank.")
    elseif newlevel >= 60  and player:getStorageValue(storage2) ~= 10 then
        player:setStorageValue(storage2, 10)
        player:setBankBalance(player:getBankBalance() + 30000)
        --player:addItem(crystal, 3)
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You receive 3 crystal coin in your bank.")
    elseif newlevel >= 100  and player:getStorageValue(storage3) ~= 10 then
        player:setStorageValue(storage3, 10)
        player:setBankBalance(player:getBankBalance() + 60000)
        --player:addItem(crystal, 6)
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You receive 6 crystal coin in your bank.")
    end
    return true
end

function onLogin(player)
    player:registerEvent("onadvance_reward")
    return true
end