local mType = Game.createMonsterType("Izcandar the Banished")
local monster = {}

monster.description = "Izcandar the Banished"
monster.experience = 6900
monster.outfit = {
	lookType = 1137,
	lookHead = 19,
	lookBody = 95,
	lookLegs = 76,
	lookFeet = 38,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.bosstiary = {
	bossRaceId = 1699,
	bossRace = RARITY_NEMESIS
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
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
	{ name = "berserk potion", chance = 100000, maxCount = 10 },
	{ name = "crystal coin", chance = 100000 },
	{ name = "energy bar", chance = 100000 },
	{ name = "giant sapphire", chance = 100000 },
	{ name = "gold token", chance = 100000, maxCount = 2 },
	{ name = "silver token", chance = 100000, maxCount = 2 },
	{ name = "royal star", chance = 100000, maxCount = 100 },
	{ name = "green gem", chance = 100000, maxCount = 2 },
	{ name = "huge chunk of crude iron", chance = 25100 },
	{ name = "mysterious remains", chance = 25000 },
	{ name = "piggy bank", chance = 12800 },
	{ name = "platinum coin", chance = 12000, maxCount = 10 },
	{ name = "supreme health potion", chance = 12000, maxCount = 10 },
	{ name = "ultimate mana potion", chance = 12000, maxCount = 20 },
	{ name = "ice shield", chance = 600 },
	{ name = "soul stone", chance = 300 },
	{ name = "summerblade", chance = 500 },
	{ name = "turquoise tendril lantern", chance = 300 },
	{ name = "purple tendril lantern", chance = 300 },
	{ name = "winterblade", chance = 500 }
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5 }
}

monster.defenses = {
	defense = 0,
	armor = 76
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 }
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
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
