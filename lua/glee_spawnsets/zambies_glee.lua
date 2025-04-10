-- credit to https://steamcommunity.com/id/TakeTheBeansIDontCare/

local genericZambieCounter = "terminator_nextbot_zambie*"

local zambieSpawnSet = {
    name = "zambies_glee", -- unique name
    prettyName = "Zambie's Glee",
    description = "Braaains...",
    difficultyPerMin = "default", -- difficulty per minute
    waveInterval = "default", -- time between spawn waves
    diffBumpWhenWaveKilled = "default", -- when there's <= 1 hunter left, the difficulty is permanently bumped by this amount
    startingBudget = { 1, 5 }, -- so budget isnt 0
    spawnCountPerDifficulty = { 1 }, -- go up to 20 fast pls
    startingSpawnCount = { 4, 7 },
    maxSpawnCount = 20,
    roundEndSound = "music/ravenholm_1.mp3",
    roundStartSound = "ambient/creatures/town_zombie_call1.wav",
    spawns = {
        {
            name = "zambie_slow",
            prettyName = "A Slow Zombie",
            class = "terminator_nextbot_zambie_slow",
            spawnType = "hunter",
            difficultyCost = { 1 },
            difficultyStopAfter = { 10, 15 },
            countClass = genericZambieCounter,
            minCount = { 4 },
            postSpawnedFuncs = nil,
        },
        {
            name = "zambie_normal",
            prettyName = "A Zombie",
            class = "terminator_nextbot_zambie",
            spawnType = "hunter",
            difficultyCost = { 2, 4 },
            countClass = genericZambieCounter,
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 1, 3 },
            name = "zambie_flaming_RARE", -- spawns early with a max count
            prettyName = "A Flaming Zombie",
            class = "terminator_nextbot_zambieflame",
            spawnType = "hunter",
            difficultyCost = { 4, 8 },
            countClass = "terminator_nextbot_zambieflame",
            maxCount = { 4 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 4, 10 },
            name = "zambie_flaming_COMMON", -- spawns later but no max count
            prettyName = "A Flaming Zombie",
            class = "terminator_nextbot_zambieflame",
            spawnType = "hunter",
            difficultyCost = { 8, 10 },
            difficultyNeeded = { 100, 150 },
            countClass = "terminator_nextbot_zambieflame",
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2 },
            name = "zambie_acid_RARE", -- spawns early with a max count
            prettyName = "An Acid Zombie",
            class = "terminator_nextbot_zambieacid",
            spawnType = "hunter",
            difficultyCost = { 4, 8 },
            countClass = "terminator_nextbot_zambieacid",
            maxCount = { 4 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 4, 15 },
            name = "zambie_acid_COMMON", -- spawns later but no max count
            prettyName = "An Acid Zombie",
            class = "terminator_nextbot_zambieacid",
            spawnType = "hunter",
            difficultyCost = { 10, 16 },
            difficultyNeeded = { 100, 150 },
            countClass = "terminator_nextbot_zambieacid",
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 2.5, 5 },
            name = "zambie_grunt_RARE",
            prettyName = "A Zombie Grunt",
            class = "terminator_nextbot_zambiegrunt",
            spawnType = "hunter",
            difficultyCost = { 25, 50 },
            difficultyNeeded = { 25, 100 },
            countClass = "terminator_nextbot_zambiegrunt",
            maxCount = 1,
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 5, 15 },
            name = "zambie_grunt_COMMON",
            prettyName = "A Zombie Grunt",
            class = "terminator_nextbot_zambiegrunt",
            spawnType = "hunter",
            difficultyCost = { 35, 65 },
            difficultyNeeded = { 200, 300 },
            countClass = genericZambieCounter,
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 10, 25 },
            name = "zambie_fast",
            prettyName = "A Fast Zombie",
            class = "terminator_nextbot_zambiefast",
            spawnType = "hunter",
            difficultyCost = { 8, 12 },
            difficultyStopAfter = { 125, 250 },
            countClass = genericZambieCounter,
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = nil,
            name = "zambie_fast_elite",
            prettyName = "An Elite Fast Zombie",
            class = "terminator_nextbot_zambiefastgrunt",
            spawnType = "hunter",
            difficultyCost = { 35, 45 },
            difficultyNeeded = { 75, 100 },
            countClass = "terminator_nextbot_zambiefastgrunt",
            maxCount = { 1, 3 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2 },
            name = "zambie_torso",
            prettyName = "A Zombie Torso",
            class = "terminator_nextbot_zambietorso",
            spawnType = "hunter",
            difficultyCost = { 1 },
            countClass = "terminator_nextbot_zambietorso",
            maxCount = { 1, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2 },
            name = "zambie_fast_torso",
            prettyName = "A Fast Zombie Torso",
            class = "terminator_nextbot_zambietorsofast",
            spawnType = "hunter",
            difficultyCost = { 4 },
            countClass = "terminator_nextbot_zambietorsofast",
            maxCount = { 1, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2 },
            name = "zambie_wraith_torso",
            prettyName = "A Wraith Torso",
            class = "terminator_nextbot_zambietorsowraith",
            spawnType = "hunter",
            difficultyCost = { 10 },
            difficultyNeeded = { 15, 50 },
            countClass = "terminator_nextbot_zambietorsowraith",
            maxCount = { 1, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2 },
            name = "zambie_wraith_rare",
            prettyName = "A Wraith",
            class = "terminator_nextbot_zambiewraith",
            spawnType = "hunter",
            difficultyCost = { 10, 20 },
            difficultyNeeded = { 10, 75 },
            countClass = "terminator_nextbot_zambiewraith",
            maxCount = { 2, 4 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 5, 10 },
            name = "zambie_wraith_elite", -- these are 1 hit kills at 100 hp, really strong
            prettyName = "An Elite Wraith",
            class = "terminator_nextbot_zambiewraithelite",
            spawnType = "hunter",
            difficultyCost = { 100, 135 },
            difficultyNeeded = { 200, 300 },
            countClass = "terminator_nextbot_zambiewraithelite",
            maxCount = { 0, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 1, 5 },
            name = "zambie_berserk",
            prettyName = "A Berserker Zombie",
            class = "terminator_nextbot_zambieberserk",
            spawnType = "hunter",
            difficultyCost = { 100, 150 },
            difficultyNeeded = { 100, 150 },
            countClass = "terminator_nextbot_zambieberserk",
            maxCount = { 0, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 2.5 },
            name = "zambie_grunt_elite",
            prettyName = "An Elite Zombie Grunt",
            class = "terminator_nextbot_zambiegruntelite",
            spawnType = "hunter",
            difficultyCost = { 90, 140 },
            difficultyNeeded = { 100, 150 },
            countClass = "terminator_nextbot_zambiegruntelite",
            maxCount = { 1, 2 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 2, 4 },
            name = "zambie_tank",
            prettyName = "A Tank Zombie",
            class = "terminator_nextbot_zambietank",
            spawnType = "hunter",
            difficultyCost = { 100, 150 },
            difficultyNeeded = { 100, 200 },
            countClass = "terminator_nextbot_zambietank",
            maxCount = { 1 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 2, 4 },
            name = "zambie_necromancer",
            prettyName = "A Necromancer Zombie",
            class = "terminator_nextbot_zambienecro",
            spawnType = "hunter",
            difficultyCost = { 150, 200 },
            difficultyNeeded = { 100, 200 },
            countClass = "terminator_nextbot_zambienecro",
            maxCount = { 1 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 0, 0.5 },
            name = "god_crab_early",
            prettyName = "The Demigod Crab",
            class = "terminator_nextbot_zambiebigheadcrab",
            spawnType = "hunter",
            difficultyCost = { 75, 400 },
            difficultyNeeded = { 100, 200 },
            countClass = "terminator_nextbot_zambiebigheadcrab",
            maxCount = { 1 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 10, 25 },
            name = "demigod_crab",
            prettyName = "The Demigod Crab",
            class = "terminator_nextbot_zambiebigheadcrab",
            spawnType = "hunter",
            difficultyCost = { 200, 400 },
            difficultyNeeded = { 300, 600 },
            countClass = "terminator_nextbot_zambiebigheadcrab",
            maxCount = { 1 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = { 10, 25 },
            name = "demigod_crab_late",
            prettyName = "The Demigod Crab",
            class = "terminator_nextbot_zambiebigheadcrab",
            spawnType = "hunter",
            difficultyCost = { 100, 200 },
            difficultyNeeded = { 1200, 1800 },
            countClass = "terminator_nextbot_zambiebigheadcrab",
            maxCount = { 10 },
            postSpawnedFuncs = nil,
        },
        {
            hardRandomChance = nil,
            name = "zambie_godcrab",
            prettyName = "The God Crab",
            class = "terminator_nextbot_zambiebiggerheadcrab",
            spawnType = "hunter",
            difficultyCost = { 800, 1200 },
            difficultyNeeded = { 1200, 1800 },
            countClass = "terminator_nextbot_zambiebiggerheadcrab",
            maxCount = { 1 },
            postSpawnedFuncs = { screamAfterSpawning },
        },
    }
}

table.insert( GLEE_SPAWNSETS, zambieSpawnSet )
