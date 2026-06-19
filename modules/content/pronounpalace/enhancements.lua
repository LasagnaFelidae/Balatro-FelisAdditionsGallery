FELIJO.PPEnhancement = SMODS.Enhancement:extend{
    discovered = true,
    unlocked = true,
    in_pool = function (self, args)
        return true
    end,
    weight = 0,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_felijo_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
    end,
}

FELIJO.PPEnhancement {
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

FELIJO.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_crit',
    pos = { x = 2, y = 0},
    config = { extra = { xmult= 1.5},},
    weight = 0.4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult} }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.xmult = card.ability.extra.xmult
            return ret
        end
    end,
    
}

FELIJO.PPEnhancement {
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
        if context.final_scoring_step then
            local ret = {}
            ret.xscore = card.ability.extra.xscore
            return ret
        end
    end,
    
}

FELIJO.PPEnhancement {
    atlas = 'pronounEnhancements',
    key = 'pp_bomb',
    pos = { x = 1, y = 0},
    config = { extra = { xscore = 0.5, xblindsize = 0.8}, timer = {hands = 2, }},
    weight = 0.9,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "felijo_explode", set ="Other"}
        local plural = (card.ability.timer.hands ~= 1 ) and "hands" or "hand"
        return { vars = { card.ability.extra.xscore, card.ability.extra.xblindsize, card.ability.timer.hands, plural } }
    end,

    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            ret.xblindsize = card.ability.extra.xblindsize
            return ret
        end
        if context.final_scoring_step and (context.cardarea == G.hand or context.cardarea == G.play) then
            local ret = {}
            card.ability.timer.hands = card.ability.timer.hands - 1
            if card.ability.timer.hands <= 0 then
                if context.cardarea == G.hand then
                    
                    ret.xscore = card.ability.extra.xscore
                end
                FELIJO.add_event({
                    func = function()
                        FELIJO.explodeCard(card, "bomb", true)
                        return true
                    end
                })
            end
            return ret
        end
    end,
    
}



