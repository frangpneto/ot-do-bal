local mType = Game.createMonsterType("The Enraged Thorn Knight")
local monster = {}

monster.description = "the enraged thorn knight"
monster.experience = 30000
monster.outfit = {
	lookType = 512,
	lookHead = 81,
	lookBody = 121,
	lookLegs = 121,
	lookFeet = 121,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 111
monster.speed = 350
monster.manaCost = 0

monster.heals = {
	{type = COMBAT_DEATHDAMAGE , percent = 1000}
}

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
	"HealthForgotten"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 3031, chance = 50320, maxCount = 165},
	{id = 3035, chance = 50320, maxCount = 30},
	{id = 16119, chance = 9660, maxCount = 5},
	{id = 16120, chance = 9660, maxCount = 5},
	{id = 16121, chance = 9660, maxCount = 5},
	{id = 3032, chance = 9660, maxCount = 5},
	{id = 3030, chance = 7360, maxCount = 5},
	{id = 9057, chance = 7350, maxCount = 5},
	{id = 3033, chance = 7150, maxCount = 5},
	{id = 5887, chance = 5909, maxCount = 2},
	{id = 238, chance = 22120, maxCount = 3},
	{id = 7643, chance = 19500, maxCount = 3},
	{id = 7642, chance = 18250, maxCount = 3},
	{id = 3041, chance = 5000},
	{id = 3039, chance = 2200},
	{id = 3038, chance = 5000},
	{id = 3037, chance = 5000},
	{id = 6499, chance = 14460},
	{id = 7439, chance = 14460},
	{id = 7443, chance = 14460},
	{id = 281, chance = 7000},
	{id = 3295, chance = 20000},
	{id = 7453, chance = 100},
	{id = 24966, chance = 100},
	{id = 5014, chance = 500},
	{id = 3436, chance = 1000},
	{id = 9302, chance = 500},
	{id = 5875, chance = 1000},
	{id = 5884, chance = 1000},
	{id = 8052, chance = 500},
	{id = 20203, chance = 1000},
	{id = 24954, chance = 500, unique = true},
	{id = 22721, chance = 100000},
	{id = 22516, chance = 100000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -700, length = 4, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -1400, maxDamage = -1700, length = 9, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -700, length = 9, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -250, radius = 10, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 1550, maxDamage = 2550, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 1000, chance = 12, speedChange = 620, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 80},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
