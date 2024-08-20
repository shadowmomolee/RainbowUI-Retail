
local addon = TinyTooltipReforged
 
addon.db = {
    version = 11.0,
    general = {
        scale             = 0.9,
        mask              = true,
        bgfile            = "Blizzard Parchment",
        background        = {0, 0, 0, 0.7},
        borderSize        = 1,
        borderCorner      = "Blizzard Tooltip",
        borderColor       = {0.6, 0.6, 0.6, 0.8},
        statusbarEnabled  = true,
        statusbarHeight   = 12,
        statusbarPosition = "default",
        statusbarOffsetX  = 0,
        statusbarOffsetY  = 0,
	statusbarFont	  = "default",
        statusbarFontSize = 14,
        statusbarFontFlag = "THINOUTLINE",
        statusbarText     = true,
        statusbarColor    = "auto",
        statusbarTexture  = "Blizzard",
	statusbarTextFormat = "health/max (percent)",
        anchor            = { position = "cursor", hiddenInCombat = false, defaultInCombat = true, defaultOnUnitFrame = false, cp = "BOTTOMLEFT", p = "BOTTOMRIGHT", cx = 20, cy = 0, },        
        alwaysShowIdInfo  = true,        
        skinMoreFrames    = true,
        headerFont        = "default",
        headerFontSize    = "default",
        headerFontFlag    = "default",
        bodyFont          = "default",
        bodyFontSize      = "default",
        bodyFontFlag      = "default",
        SavedVariablesPerCharacter = false,
        ColorBlindMode 	  = false,
     },
    unit = {
        player = {
            coloredBorder = "class",
            background = { colorfunc = "class", alpha = 0.9, },
            anchor = { position = "inherit", hiddenInCombat = false, defaultInCombat = false, defaultOnUnitFrame = false, cp = "BOTTOM", p = "BOTTOMRIGHT", },
            showTarget = true, 
	    showSpec = true,
            showTargetBy = true,
            showModel = false,  
            grayForDead = true, 
            elements = {
                raidIcon    = { enable = true, filter = "none" },
                roleIcon    = { enable = true, filter = "none" },
                pvpIcon     = { enable = true, filter = "none" },
                factionIcon = { enable = true, filter = "none" },
                factionBig  = { enable = true, filter = "none" },
                classIcon   = { enable = true, filter = "none" },
                friendIcon  = { enable = true, filter = "none" },
                title       = { enable = true, color = "ccffff", wildcard = "%s",   filter = "none" },
                name        = { enable = true, color = "class",  wildcard = "%s",   filter = "none" },
                realm       = { enable = true, color = "00eeee", wildcard = "%s",   filter = "none" },
                statusAFK   = { enable = true, color = "ffd200", wildcard = "(%s)", filter = "none" },
                statusDND   = { enable = true, color = "ffd200", wildcard = "(%s)", filter = "none" },
                statusDC    = { enable = true, color = "999999", wildcard = "(%s)", filter = "none" },
                guildName   = { enable = true, color = "ff00ff", wildcard = "<%s>", filter = "none" },
                guildIndex  = { enable = false, color = "cc88ff", wildcard = "%s",  filter = "none" },
                guildRank   = { enable = true, color = "cc88ff", wildcard = "(%s)", filter = "none" },
                guildRealm  = { enable = true, color = "00cccc", wildcard = "%s",   filter = "none" },
                levelValue  = { enable = true, color = "level",   wildcard = "%s",  filter = "none" }, 
                factionName = { enable = true, color = "faction", wildcard = "%s",  filter = "none" }, 
                gender      = { enable = false, color = "999999",  wildcard = "%s", filter = "none" }, 
                raceName    = { enable = true, color = "cccccc",  wildcard = "%s",  filter = "none" }, 
                className   = { enable = true, color = "ffffff",  wildcard = "%s",  filter = "none" }, 
                isPlayer    = { enable = false, color = "ffffff",  wildcard = "(%s)", filter = "none" }, 
                role        = { enable = false, color = "ffffff",  wildcard = "(%s)", filter = "none" },
                moveSpeed   = { enable = false, color = "e8e7a8",  wildcard = "%d%%", filter = "none" },
                zone        = { enable = true,  color = "ffffff",  wildcard = "%s", filter = "none" },
                { "friendIcon", "raidIcon", "roleIcon", "pvpIcon", "factionIcon", "classIcon", "title", "name", "realm", "statusAFK", "statusDND", "statusDC", },
                { "guildName", "guildIndex", "guildRank", "guildRealm", },
                { "levelValue", "factionName", "gender", "raceName", "className", "isPlayer", "role", "moveSpeed", },
                { "zone" },
            },
        },
        npc = {
            coloredBorder = "reaction",
            background = { colorfunc = "default", alpha = 0.9, },
            showTarget = true,
            showTargetBy = true,
            grayForDead = true,
            showModel = false,
            anchor = { position = "inherit", hiddenInCombat = false, defaultInCombat = false, defaultOnUnitFrame = false, cp = "BOTTOM", p = "BOTTOMRIGHT", },
            elements = {
                factionBig   = { enable = true, filter = "none" },
                raidIcon     = { enable = true,  filter = "none" },
                classIcon    = { enable = false, filter = "none" },
                questIcon    = { enable = true,  filter = "none" },
                name         = { enable = true, color = "default",wildcard = "%s",    filter = "none" },
                npcTitle     = { enable = true, color = "99e8e8", wildcard = "<%s>",  filter = "none" },
                levelValue   = { enable = true, color = "level",  wildcard = "%s",    filter = "none" }, 
                classifBoss  = { enable = true, color = "ff0000", wildcard = "(%s)",  filter = "none" },
                classifElite = { enable = true, color = "ffff33", wildcard = "(%s)",  filter = "none" }, 
                classifRare  = { enable = true, color = "ffaaff", wildcard = "(%s)",  filter = "none" }, 
                creature     = { enable = true, color = "selection", wildcard = "%s", filter = "none" },
                reactionName = { enable = true, color = "33ffff", wildcard = "<%s>",  filter = "reaction6" },
                moveSpeed    = { enable = false, color = "e8e7a8",  wildcard = "%d%%", filter = "none" },
                { "raidIcon", "classIcon", "questIcon", "name", },
                { "levelValue", "classifBoss", "classifElite", "classifRare", "creature", "reactionName", "moveSpeed", },
            },
        },
    },
    item = {
        coloredItemBorder = true,
        showItemIcon = false,
	showExpansionInformation = true,
	showStackCount = false,
        showStackCountAlt = true,
    },
    spell = {
        borderColor = {0.6, 0.6, 0.6, 0.8},
        background = {0, 0, 0, 0.8},
        showIcon = true,
    },
    quest = {
        coloredQuestBorder = true, 
    },
    variables = {},
}
