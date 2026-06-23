FelisAG.T2 = SMODS.Consumable:extend{
    in_pool = function (self, args)
       return true
    end,
    hidden = true,
	soul_set = "Tarot",
	soul_rate = 0.003,
    can_repeat_soul = true,
    discovered = false,
	unlocked = true,
}
FelisAG.T3 = SMODS.Consumable:extend{
    in_pool = function (self, args)
       return true
    end,
    hidden = true,
    discovered = false,
	unlocked = true,
	soul_set = "Tarot",
	soul_rate = 0.0005,
    can_repeat_soul = true,
}
FelisAG.T4 = SMODS.Consumable:extend{
    in_pool = function (self, args)
       return true
    end,
    hidden = true,
    discovered = false,
	unlocked = true,
	soul_set = "Tarot",
	soul_rate = 0.00002,
    can_repeat_soul = true,
}

----------------------------------------

SMODS.ConsumableType {
    key = 'feli_fag_tier2_tarot',
    default = 'c_feli_fag_tier2_magician',
    primary_colour = G.C.SET.Tarot,
    secondary_colour = HEX('ED9AA8'),
    collection_rows = { 6, 6 },
    shop_rate = 0.3,
    loc_txt = {
        undiscovered = {
			name = "Not Discovered",
			text = {
				"Purchase or use",
                "this card in an",
                "unseeded run to",
                "learn what it does"
			},
		},
    },
}

SMODS.UndiscoveredSprite{
    key = 'feli_fag_tier2_tarot',
    atlas = "consUndis",
    pos = {x=0, y=0}
}

SMODS.ConsumableType {
    key = 'feli_fag_tier3_tarot',
    default = 'c_feli_fag_tier3_magician',
    primary_colour = G.C.SET.Tarot,
    secondary_colour = HEX('8096D2'),
    collection_rows = { 6, 6 },
    shop_rate = 0.2,
    loc_txt = {
        undiscovered = {
			name = "Not Discovered",
			text = {
				"Purchase or use",
                "this card in an",
                "unseeded run to",
                "learn what it does"
			},
		},
    },
}
SMODS.UndiscoveredSprite{
    key = 'feli_fag_tier3_tarot',
    atlas = "consUndis",
    pos = {x=1, y=0},
}

SMODS.ConsumableType {
    key = 'feli_fag_tier4_tarot',
    default = 'c_feli_fag_tier4_magician',
    primary_colour = G.C.SET.Tarot,
    secondary_colour = HEX('F0CF99'),
    collection_rows = { 6, 6 },
    shop_rate = 0.01,
    loc_txt = {
        undiscovered = {
			name = "Not Discovered",
			text = {
				"Purchase or use",
                "this card in an",
                "unseeded run to",
                "learn what it does"
			},
		},
    },
}
SMODS.UndiscoveredSprite{
    key = 'feli_fag_tier4_tarot',
    atlas = "consUndis",
    pos = {x=2, y=0}
}

--------------

SMODS.Consumable {
    key = 'ascended',
    set = 'Tarot',
	atlas = 'c_tarots',
    discovered = false,
	unlocked = true,
    pos = { x = 0, y = 0 },
    config = { max_highlighted = 2, mod_conv = G.superior_enhancement },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}

--[[
FelisAG.T2 {
    key = 'fool',
    set = 'vremade_Tarot',
    pos = { x = 0, y = 0 },
    config = { max_clones = 2,},
    loc_vars = function(self, info_queue, card)
        local fool_c = G.GAME.last_tarot_planet and G.P_CENTERS[G.GAME.last_tarot_planet] or nil
        local last_tarot_planet = fool_c and localize { type = 'name_text', key = fool_c.key, set = fool_c.set } or
            localize('k_none')
        local colour = (not fool_c or fool_c.name == 'The Fool' or fool_c.name == 'The Fool [II]' or fool_c.name == 'The Fool [III]' or fool_c.name == 'The Fool [IV]') and G.C.RED or G.C.GREEN

        if not (not fool_c or fool_c.name == 'The Fool' or fool_c.name == 'The Fool [II]' or fool_c.name == 'The Fool [III]' or fool_c.name == 'The Fool [IV]') then
            info_queue[#info_queue + 1] = fool_c
        end

        local main_end = {
            {
                n = G.UIT.C,
                config = { align = "bm", padding = 0.02 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "m", colour = colour, r = 0.05, padding = 0.05 },
                        nodes = {
                            { n = G.UIT.T, config = { text = ' ' .. last_tarot_planet .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true } },
                        }
                    }
                }
            }
        }

        return { vars = { last_tarot_planet, card.ability.max_clones }, main_end = main_end }
    end,
    use = function(self, card, area, copier)
        for i=0, card.ability.max_clones do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    if G.consumeables.config.card_limit > #G.consumeables.cards then
                        play_sound('timpani')
                        SMODS.add_card({ key = G.GAME.last_tarot_planet })
                        card:juice_up(0.3, 0.5)
                    end
                    return true
                end
            }))
            delay(0.6)
        end
    end,
    can_use = function(self, card)
        return (#G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables) and
            G.GAME.last_tarot_planet and
            G.GAME.last_tarot_planet ~= 'c_fool'
    end
}
]]--
FelisAG.T2 {
    key = 't2_magician',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 1, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_lucky_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}

FelisAG.T2 {
    key = 't2_empress',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 3, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_mult_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

}

FelisAG.T2 {
    key = 't2_heirophant',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 5, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_bonus_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T2 {
    key = 't2_lovers',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 6, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_wild_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T2 {
    key = 't2_chariot',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 7, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_steel_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T2 {
    key = 't2_justice',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 8, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_glass_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T2 {
    key = 't2_devil',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 5, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_gold_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T2 {
    key = 't2_tower',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 6, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_stone_t2' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T2 {
    key = 't2_ascended',
    set = 'feli_fag_tier2_tarot',
	atlas = 't2Tarots',

    pos = { x = 2, y = 2 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_enh_sup_t2' },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}
----

FelisAG.T3 {
    key = 't3_magician',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 1, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_lucky_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}

FelisAG.T3 {
    key = 't3_empress',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 3, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_mult_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

}

FelisAG.T3 {
    key = 't3_heirophant',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 5, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_bonus_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T3 {
    key = 't3_lovers',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 6, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_wild_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T3 {
    key = 't3_chariot',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 7, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_steel_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T3 {
    key = 't3_justice',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 8, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_glass_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T3 {
    key = 't3_devil',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 5, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_gold_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T3 {
    key = 't3_tower',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 6, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_stone_t3' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T3 {
    key = 't3_ascended',
    set = 'feli_fag_tier3_tarot',
	atlas = 't3Tarots',

    pos = { x = 2, y = 2 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_enh_sup_t3' },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}
---


FelisAG.T4 {
    key = 't4_magician',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 1, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_lucky_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}

FelisAG.T4 {
    key = 't4_empress',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 3, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_mult_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

}

FelisAG.T4 {
    key = 't4_heirophant',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 5, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_bonus_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T4 {
    key = 't4_lovers',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 6, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_wild_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T4 {
    key = 't4_chariot',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 7, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_steel_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T4 {
    key = 't4_justice',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 8, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_glass_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}
FelisAG.T4 {
    key = 't4_devil',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 5, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_gold_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T4 {
    key = 't4_tower',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 6, y = 1 },
    config = { max_highlighted = 1, mod_conv = 'm_feli_fag_stone_t4' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,
}

FelisAG.T4 {
    key = 't4_ascended',
    set = 'feli_fag_tier4_tarot',
	atlas = 't4Tarots',

    pos = { x = 2, y = 2 },
    config = { max_highlighted = 2, mod_conv = 'm_feli_fag_enh_sup_t4' },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end
}