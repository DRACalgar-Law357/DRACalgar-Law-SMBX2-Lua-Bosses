--[[

	Written by MrDoubleA
	Please give credit!

    Banzai bill blaster sprites by Sednaiur
	Background banzai bill sprites by Squishy Rex

    Part of MrDoubleA's NPC Pack

]]

local npcManager = require("npcManager")
local npcutils = require("npcs/npcutils")

local ai = require("bulletBills_ai")


local bulletBills = {}
local npcID = NPC_ID

local deathEffectID = (npcID - 4)
local smokeEffectID = (npcID - 3)

local bulletBillsSettings = table.join({
	id = npcID,

	deathEffectID = deathEffectID,
	smokeEffectID = smokeEffectID,
	smokeStartFrame = 0,

	gfxwidth = 128,
	gfxheight = 128,
	width = 104,
	height = 104,
	gfxoffsetx = 0,
	gfxoffsety = 12,

	noyoshi = true,
	noiceball = true,

	isStrong = true,

	speed = 2,
	isHoming = true,
	rotationLerpFactor = 0.006,
	followTime = 0,
},ai.bulletSettings)

npcManager.setNpcSettings(bulletBillsSettings)
npcManager.registerHarmTypes(npcID,ai.banzaiHarmTypes,ai.bulletHarmEffects)


ai.registerBullet(npcID)


return bulletBills