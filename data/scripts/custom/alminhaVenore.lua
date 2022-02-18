local entrarSoulWar = MoveEvent()

function entrarSoulWar.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end
    destination = Position(31914, 32355, 8)
    player:teleportTo(destination)
	player:say("Cuidado que as alminhas sao o capeta!")
	return true
end

entrarSoulWar:type("stepin")
entrarSoulWar:aid(14516)
entrarSoulWar:register()
