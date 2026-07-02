SMODS.Attribute {
    key = "fag_clearance"

}

function G.UIDEF.create_UIBox_your_collection_clearances()
	local pool = {}
	for k, v in pairs(G.P_CENTER_POOLS.feli_fag_clearances) do
		if not v.no_collection then pool[#pool + 1] = v end
	end
	return SMODS.card_collection_UIBox(pool, { 6, 6}, {
		no_materialize = true,
	})
end

function G.FUNCS.feli_fag_your_collection_clearances(e)
	G.SETTINGS.paused = true
	G.FUNCS.overlay_menu {
		definition = G.UIDEF.create_UIBox_your_collection_clearances(),
	}
end
function FelisAG.custom_collection_tabs()
	local tally = 0
	for _, v in pairs(G.P_CENTER_POOLS.feli_fag_clearances) do
		tally = tally + ((v.discovered and v.feli_fag_clearances ~= "padding") and 1 or 0)
	end
	return { UIBox_button {
		button = "feli_fag_your_collection_clearances",
		label = { localize("b_feli_fag_clearances") },
		count = { tally = tally, of = #G.P_CENTER_POOLS.feli_fag_clearances},
		minw = 5,
		id = "feli_fag_your_collection_clearances"
	} }
end

G.P_CENTER_POOLS.feli_fag_clearances = G.P_CENTER_POOLS.feli_fag_clearances or {}

--- @class FelisAG.Clearance: SMODS.Center
FelisAG.Clearance =  SMODS.Center:extend{
    atlas = 'feli_fag_pronounClearances',
    cost = 10,

    attributes = {"fag_clearance"},
    select_card = "feli_fag_clearances_area",    
    in_pool = function (self, args)
        return false
    end,
	set = 'feli_fag_clearances',
	config = {},
	class_prefix = 'clearance',
	required_params = {
		'key',
	},
	pre_inject_class = function(self)
		G.P_CENTER_POOLS[self.set] = {}
	end,
	no_collection = false,
    unlocked = false,
	discovered = false,
    badge_color = HEX('CFC4B2'),
    badge_text_color = G.C.WHITE,
	set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('753F8E'), HEX('A4CA5A'), 1 )
	end,
    set_card_type_badge = function(self, card, badges)
		badges[#badges + 1] = create_badge(localize("k_feli_fag_clearances"), self.badge_color, self.badge_text_color, 1.2)
	end,
	inject = function(self)
		self.config = self.config or {}
		self.config.extra = self.config.extra or {}
		self.config.immutable = self.config.immutable or {}
		local set_ability_ref = self.set_ability or function() end
		local calculate_ref = self.calculate or function() end
		SMODS.Center.inject(self)
	end,
}

SMODS.UndiscoveredSprite {
	key = 'feli_fag_clearances',
	atlas = 'feli_fag_pronounClearances',
	pos = { x = 11, y =3 },
	no_overlay = true,
}
SMODS.UndiscoveredCompat.feli_fag_clearances = true


FelisAG.Clearance {
    key = "beige",
    pos = { x = 0, y = 0 },
    unlocked = true,
    discovered = true,
    badge_text_color = G.ARGS.LOC_COLOURS.feli_fag_balatro_black,
}

FelisAG.Clearance {
    key = "black",
    pos = { x = 1, y = 0 },
    config = {boss_scaling = 1.5},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.boss_scaling}}
    end,
    badge_color = HEX('383838'),
}

FelisAG.Clearance {
    key = "purple",
    pos = { x = 2, y = 0 },
    badge_color = HEX('B300FF'),
}

FelisAG.Clearance {
    key = "blue",
    pos = { x = 3, y = 0 },
    badge_color = HEX('0048FF'),
}

FelisAG.Clearance {
    key = "cerulean",
    pos = { x = 4, y = 0 },
    badge_color = HEX('00BAFF'),
}

FelisAG.Clearance {
    key = "teal",
    pos = { x = 5, y = 0 },
    config = {discards = 1},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.discards}}
    end,
    badge_color = HEX('00FFC3'),
}

FelisAG.Clearance {
    key = "green",
    pos = { x = 6, y = 0 },
    badge_color = HEX('4CFF00'),
    config = {boss_scaling = 1.5},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.boss_scaling}}
    end,
}

FelisAG.Clearance {
    key = "yellow",
    pos = { x = 7, y = 0 },
    badge_color = HEX('FFF300'),
}

FelisAG.Clearance {
    key = "orange",
    pos = { x = 8, y = 0 },
    badge_color = HEX('FF9900'),
    config = {joker_slots = 1},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.joker_slots}}
    end,
}

FelisAG.Clearance {
    key = "red",
    pos = { x = 9, y = 0 },
    badge_color = HEX('FF0000'),
}

FelisAG.Clearance {
    key = "hazel",
    pos = { x = 10, y = 0 },
    badge_color = HEX('636354'),
    config = {joker_slots = 1, boss_scaling = 1.5},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.joker_slots, card.ability.boss_scaling}}
    end,
}

FelisAG.Clearance {
    key = "lavender",
    pos = { x = 11, y = 0 },
    badge_color = HEX('7974A1'),
    config = {joker_slots = 1, boss_scaling = 2},
    loc_vars = function(self,info_queue,card) 
        return {vars = {card.ability.joker_slots, card.ability.boss_scaling}}
    end,
}

--[[

Fun clearances to add later

FelisAG.Clearance {
    key = "bonus",
    pos = { x = 6, y = 1 },
    badge_color = HEX('3DB2ED'),
}

FelisAG.Clearance {
    key = "mult",
    pos = { x = 7, y = 1 },
    badge_color = HEX('CD272A'),
}

FelisAG.Clearance {
    key = "wild",
    pos = { x = 8, y = 1 },
    badge_color = HEX('A08082'),
}



FelisAG.Clearance {
    key = "lucky",
    pos = { x = 10, y = 1 },
    badge_color = HEX('E3D9AE'),
    badge_text_color = G.ARGS.LOC_COLOURS.feli_fag_balatro_black,
}

FelisAG.Clearance {
    key = "stone",
    pos = { x = 9, y = 1 },
    badge_color = HEX('ABB0BA'),
    badge_text_color = G.ARGS.LOC_COLOURS.feli_fag_balatro_black,
}

FelisAG.Clearance {
    key = "glass",
    pos = { x = 11, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_glass,
}

FelisAG.Clearance {
    key = "steel",
    pos = { x = 5, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_steel,
}


FelisAG.Clearance {
    key = "gold",
    pos = { x = 4, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_gold,
    badge_text_color = G.ARGS.LOC_COLOURS.feli_fag_balatro_black,
}

FelisAG.Clearance {
    key = "foil",
    pos = { x = 1, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_foil,
}

FelisAG.Clearance {
    key = "holographic",
    pos = { x = 2, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_holo,
    badge_text_color = G.ARGS.LOC_COLOURS.feli_fag_balatro_black,
}

FelisAG.Clearance {
    key = "polychrome",
    pos = { x = 0, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_poly,
}

FelisAG.Clearance {
    key = "negative",
    pos = { x = 3, y = 1 },
    badge_color = SMODS.Gradients.feli_fag_cl_negative,
}





]]--