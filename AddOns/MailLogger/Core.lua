
local AddonName, Addon = ...
local L = Addon.L

Addon.Version = C_AddOns.GetAddOnMetadata(AddonName, "Version")
Addon.VerNum = 0

Addon.TradeLog = {} -- 交易记录

Addon.Output = {} -- 交易记录输出窗口
Addon.SetWindow = {} -- 設置窗口
Addon.MinimapIcon = {} -- 小地图按钮
Addon.Calendar = {} -- 日曆

Addon.AvailableDate = {} -- 日期緩存

--需要存入SavedVariables的内容
Addon.Config = { --默认config
	["SendToPublic"] = false,
	["EnableWhisper"] = false,
	["LogDays"] = 90,
	["ShowMinimapIcon"] = true,
	["MinimapIconAngle"] = 345,
	["OutputFramePos"] = {"RIGHT", true, "RIGHT", -20, 0},
	["SetWindowPos"] = {"CENTER", nil, "CENTER", -210, 0},
--	["PreventTrade"] = false,
	["AltList"] = {},
	["SelectName"] = nil,
	["LogEverything"] = false,
	["EnableML"] = true,
	["OnlyThisCharacter"] = false;
	["Mode"] = "ALL";
}

Addon.IgnoreItems = {
	[L["Conjured Crystal Water"]] = true,
	[L["Conjured Cinnamon Roll"]] = true,
	[L["Major Healthstone"]] = true,
}

Addon.DefaultIgnoreItems = {
	[L["Conjured Crystal Water"]] = true,
	[L["Conjured Cinnamon Roll"]] = true,
	[L["Major Healthstone"]] = true,
}

--注册Frames
Addon.Frame = CreateFrame("Frame", AddonName .. "Frame")
Addon.Frame:Hide()
--Addon.Panel = CreateFrame("Frame", AddonName .. "Panel")
--Addon.Panel:Hide()
--Addon.ScrollFrame = CreateFrame("ScrollFrame", nil, UIParent, "UIPanelScrollFrameTemplate")
--Addon.ScrollFrame:Hide()