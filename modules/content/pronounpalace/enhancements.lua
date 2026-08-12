FelisAG.PPEnhancement = SMODS.Enhancement:extend{
    discovered = true,
    unlocked = true,
    in_pool = function (self, args)
        return true
    end,
    weight = 0,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
    end,
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_wood',
    pos = { x = 3, y = 0},
    config = { extra = { mult = 2},},
    weight = 0.8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.mult = card.ability.extra.mult
            return ret
        end
    end,
    
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_plastic',
    pos = { x = 3, y = 1},
    config = { extra = { xblind = 0.9},},
    weight = 0.8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xblind} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.xblind = card.ability.extra.xblind
            return ret
        end
    end,
    
}


FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_crit',
    pos = { x = 2, y = 0},
    config = { extra = { xmult= 1.5},},
    weight = 0.4,
    loc_vars = function(self, info_queue, card)
        local boost = G.GAME.feli_fag_crit_boost or 0
        return { vars = { card.ability.extra.xmult + boost} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            local boost = G.GAME.feli_fag_crit_boost or 0
            ret.xmult = card.ability.extra.xmult + boost 
            return ret
        end
    end,
    
}



FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_candy',
    pos = { x = 2, y = 1},
    config = { extra = { xscore = 1.1},},
    weight = 0.8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xscore} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.xscore = card.ability.extra.xscore
            return ret
        end
    end,
    
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_money',
    replace_base_card = true,
    pos = { x = 4, y = 0},
    config = { h_dollars = 1},
    weight = 0.8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.h_dollars} }
    end,
    
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_bleed',
    pos = { x = 0, y = 0},
    config = { extra = { xscore = 0.9, mult = 5},},
    weight = 1,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xscore, card.ability.extra.mult} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.mult = card.ability.extra.mult
            return ret
        end
        if context.final_scoring_step and context.cardarea == G.hand then
            local ret = {}
            ret.xscore = card.ability.extra.xscore
            return ret
        end
    end,
    
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_bomb',
    pos = { x = 1, y = 0},
    config = { extra = { xscore = 0.5, xblindsize = 0.8}, timer = {hands = 2, set = false, min = 1, max = 3}, },
    weight = 0.9,
    loc_vars = function(self, info_queue, card)
        local plural = (card.ability.timer.hands ~= 1 ) and "hands" or "hand"
        local counter = (card.ability.timer.set == false and card.ability.timer.min.." to "..card.ability.timer.max 
            or (card.ability.timer.hands ~= 1 ) and card.ability.timer.hands 
            or "this")
        return { vars = { card.ability.extra.xscore, card.ability.extra.xblindsize, counter, plural } }
    end,

    set_ability = function(self, card, initial, delay_sprites)
        if G.deck then
            card.ability.timer.set = true
            card.ability.timer.hands = pseudorandom("pp_bomb",card.ability.timer.min, card.ability.timer.max)
            if card.ability.timer.hands == 1 then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            if card.ability.timer.hands <= 1 then
                ret.xblindsize = card.ability.extra.xblindsize
            end
            return ret
        end
        if context.final_scoring_step and (context.cardarea == G.hand or context.cardarea == G.play or context.cardarea == "unscored") then
            local ret = {}
            card.ability.timer.hands = card.ability.timer.hands - 1
            if card.ability.timer.hands == 1 then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
            end
            if card.ability.timer.hands <= 0 then
                if context.cardarea == G.hand then
                    
                    ret.xscore = card.ability.extra.xscore
                end
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.9,
                    func = function()
                        FelisAG.explodeCard(card, "bomb", true)
                        return true
                    end
                }))
                    
                    
            end
            return ret
        end
    end,
    
}
local tiles = {
    {key = "m_feli_fag_pp_wood", weight = 10},
    {key = "m_feli_fag_pp_plastic", weight = 10},
    {key = "m_feli_fag_pp_crit", weight = 4},
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_ash',
    pos = { x = 1, y = 1},
    config = {},
    weight = 1,
    loc_vars = function(self, info_queue, card)
        return {}
    end,

    calculate = function(self, card, context)
		if context.after then
            if context.cardarea == G.hand or context.cardarea == G.deck or context.cardarea == G.discard then
			    SMODS.destroy_cards(card)
            end
            if context.cardarea == G.play then
                card:set_ability(FelisAG.quick_pool_pick(tiles))
            end
		end
    end,
    
}

FelisAG.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_frozen',
    pos = { x = 5, y = 0},
    config = { extra = {mult = 2, xblind = 0.9}},
    weight = 1,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.xblind, } }
    end,

    calculate = function(self, card, context)
		if context.after then
			card:set_ability("m_feli_fag_pp_wood")

		end
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.mult = card.ability.extra.mult
            ret.xblind = card.ability.extra.xblind
            return ret
        end
    end,
    
}


