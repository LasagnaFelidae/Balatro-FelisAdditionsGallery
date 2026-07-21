SMODS.Enhancement {
	key = 'enh_sup_mp',
	atlas = 'lover_tieredEnhancements',
	pos = { x = 0, y = 7 },
	config = { extra = {xchips = 0.33}, mod = {min = 0.7, max = 1.8}},
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = false,
	weight = 0,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	
	
	in_pool = function(self)
		return false
	end,
	
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips*100, card.ability.mod.min, card.ability.mod.max } }
	end,

	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				xchips = math.max(0.6,(card.base.id * card.ability.extra.xchips) * modifier)
			}
		end
	end,
}

FelisAG.T2Enhancement {
	key = 'enh_sup_t2_mp',
	atlas = 'lover_tieredEnhancements',
	pos = { x = 1, y = 7 },
	config = { extra = {xchips = 0.45}, mod = {min = 0.7, max = 2}},
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = false,
	weight = 0,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	
	
	in_pool = function(self)
		return false
	end,
	
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips*100, card.ability.mod.min, card.ability.mod.max } }
	end,

	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				xchips = math.max(0.7,(card.base.id * card.ability.extra.xchips) * modifier)
			}
		end
	end,
}

FelisAG.T3Enhancement {
	key = 'enh_sup_t3_mp',
	atlas = 'lover_tieredEnhancements',
	pos = { x = 2, y = 7 },
	config = { extra = {xchips = 0.65}, mod = {min = 0.8, max = 2.2}},
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = false,
	weight = 0,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	
	
	in_pool = function(self)
		return false
	end,
	
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips*100, card.ability.mod.min, card.ability.mod.max } }
	end,

	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("my name jeff"), card.ability.mod.min, card.ability.mod.max)
			return {
				xchips = math.max(0.8,(card.base.id * card.ability.extra.xchips) * modifier)
			}
		end
	end,
}

FelisAG.T4Enhancement {
	key = 'enh_sup_t4_mp',
	atlas = 'lover_tieredEnhancements',
	pos = { x = 3, y = 7 },
	config = { extra = {xchips = 0.85}, mod = {min = 0.9, max = 2.5}},
	discovered = true,
	unlocked = true,
	replace_base_card = false,
	no_rank = false,
	no_suit = false,
	always_scores = false,
	weight = 0,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	
	in_pool = function(self)
		return false
	end,
	
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips*100, card.ability.mod.min, card.ability.mod.max } }
	end,

	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("my name jeff"), card.ability.mod.min, card.ability.mod.max)
			return {
				xchips = math.max(1,(card.base.id * card.ability.extra.xchips) * modifier)
			}
		end
	end,
}
-- Wild
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'wild_t2_mp',
    pos = { x = 1, y = 8 },
    config = { extra = { mult = 4}, mod = {min = 0.5, max = 1.5} },
    any_suit = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            return { mult = math.max(1,(card.ability.extra.mult) * modifier) }
        end
    end,
    

}
FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'wild_t3_mp',
    pos = { x = 2, y = 8 },
    any_suit = true,
    config = { extra = { repetitions = 1, mult = 6}, mod = {min = 0.7, max = 2.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions, card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            return { repetitions = card.ability.extra.repetitions, mult = math.max(1,(card.ability.extra.mult) * modifier) }
        end
    end,
}
FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'wild_t4_mp',
    pos = { x = 3, y = 8 },
    any_suit = true,
    config = { extra = { repetitions = 3, mult = 8}, mod = {min = 0.8, max = 3.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions, card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            return { repetitions = card.ability.extra.repetitions, mult = math.max(1,(card.ability.extra.mult) * modifier) }
        end
    end,

}
-- Bonus
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'bonus_t2_mp',
    pos = { x = 1, y = 0 },
    config = { extra = {chips = 60}, mod = {min = 0.7, max = 2}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max } }
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				chips = math.max(0.7,(card.ability.extra.chips) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_bonus_t2",
}

FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'bonus_t3_mp',
    pos = { x = 2, y = 0 },
    config = { extra = {chips = 120}, mod = {min = 0.8, max = 2.2}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max } }
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				chips = math.max(0.8,(card.ability.extra.chips) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_bonus_t3",
}

FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'bonus_t4_mp',
	weight = 0,
    pos = { x = 3, y = 0 },
    config = { extra = {chips = 240}, mod = {min = 0.9, max = 2.5}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				chips = math.max(1,(card.ability.extra.chips) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_bonus_t4",
}

-- Mult
FelisAG.T2Enhancement {
    atlas = 'lover_tieredEnhancements',
    key = 'mult_t2_mp',
    pos = { x = 1, y = 1 },
    config = { extra = {mult = 8}, mod = {min = 0.7, max = 2.5}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.ability.extra.mult) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_mult_t2",
}

FelisAG.T3Enhancement {
    atlas = 'lover_tieredEnhancements',
    key = 'mult_t3_mp',
    pos = { x = 2, y = 1 },
    config = { extra = {mult = 16 }, mod = {min = 0.8, max = 3} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.ability.extra.mult) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_mult_t3",
}

FelisAG.T4Enhancement {
    atlas = 'lover_tieredEnhancements',
    key = 'mult_t4_mp',
    pos = { x = 3, y = 1 },
    config = { extra = {mult = 32}, mod = {min = 0.9, max = 4} },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.ability.extra.mult) * modifier)
			}
		end
	end,
    m_misprint_original = "m_feli_fag_mult_t4",
}

-- Glass
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'glass_t2_mp',
    pos = { x = 1, y = 3 },
    shatters = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { xmult = 3.5, extra = { odds = 4, location = 1 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'the fitnessgram pacer test is a')
        return { vars = { card.ability.Xmult, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play then
            local to_destroy = {}
            local proper_flag = false
            for i = 1, #G.play.cards do
                if G.play.cards[i] == card then
                    card.ability.extra.location = i
                    proper_flag = true
                end
            end
            if proper_flag then
                if G.play.cards[card.ability.extra.location - 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location - 1])
                end
                table.insert(to_destroy, G.play.cards[card.ability.extra.location])
                if G.play.cards[card.ability.extra.location + 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location + 1])
                end
                for i = 1, #to_destroy do
                    if SMODS.pseudorandom_probability(card, 'multistage aerobic capacity test', 1, card.ability.extra.odds) then
                        G.E_MANAGER:add_event(Event {
                            func = function()
                                SMODS.destroy_cards(to_destroy[i])
                                return true
                            end
                        })
                    end
                end
            end
        end
    end,
    m_misprint_original = "m_feli_fag_glass_t2",
}

FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'glass_t3_mp',
    pos = { x = 2, y = 3 },
    shatters = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { xmult = 4.5, extra = { odds = 6, location = 1 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'the fitnessgram pacer test is a')
        return { vars = { card.ability.Xmult, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play then
            local to_destroy = {}
            local proper_flag = false
            for i = 1, #G.play.cards do
                if G.play.cards[i] == card then
                    card.ability.extra.location = i
                    proper_flag = true
                end
            end
            if proper_flag then
                if G.play.cards[card.ability.extra.location - 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location - 1])
                end
                table.insert(to_destroy, G.play.cards[card.ability.extra.location])
                if G.play.cards[card.ability.extra.location + 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location + 1])
                end
                for i = 1, #to_destroy do
                    if SMODS.pseudorandom_probability(card, 'multistage aerobic capacity test', 1, card.ability.extra.odds) then
                        G.E_MANAGER:add_event(Event {
                            func = function()
                                SMODS.destroy_cards(to_destroy[i])
                                return true
                            end
                        })
                    end
                end
            end
        end
    end,
    m_misprint_original = "m_feli_fag_glass_t3",
}

FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'glass_t4_mp',
    pos = { x = 3, y = 3 },
    shatters = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { xmult = 6, extra = { odds = 8, location = 1 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'the fitnessgram pacer test is a')
        return { vars = { card.ability.Xmult, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play then
            local to_destroy = {}
            local proper_flag = false
            for i = 1, #G.play.cards do
                if G.play.cards[i] == card then
                    card.ability.extra.location = i
                    proper_flag = true
                end
            end
            if proper_flag then
                if G.play.cards[card.ability.extra.location - 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location - 1])
                end
                table.insert(to_destroy, G.play.cards[card.ability.extra.location])
                if G.play.cards[card.ability.extra.location + 1] then
                    table.insert(to_destroy, G.play.cards[card.ability.extra.location + 1])
                end
                for i = 1, #to_destroy do
                    if SMODS.pseudorandom_probability(card, 'multistage aerobic capacity test', 1, card.ability.extra.odds) then
                        G.E_MANAGER:add_event(Event {
                            func = function()
                                SMODS.destroy_cards(to_destroy[i])
                                return true
                            end
                        })
                    end
                end
            end
        end
    end,
    m_misprint_original = "m_feli_fag_glass_t4",
}

-- Steel
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'steel_t2_mp',
    pos = { x = 1, y = 4 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = {
        extra = {
            base = 2.5,
            gain = 2.5
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.base,
                card.ability.extra.gain
            }
        }
    end,

    calculate = function(self, card, context)
        if context.main_scoring
            and context.cardarea == G.hand then
            for _, pcard in ipairs(context.full_hand) do
                message = "?niagA"
                SMODS.calculate_effect({ xchips = 2.5 }, pcard)
            end
        end
    end,
    m_misprint_original = "m_feli_fag_steel_t2",
}

FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'steel_t3_mp',
    pos = { x = 2, y = 4 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = {
        extra = {
            base = 3,
            gain = 3
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.base,
                card.ability.extra.gain
            }
        }
    end,

    calculate = function(self, card, context)
        if context.main_scoring
            and context.cardarea == G.hand then
            for _, pcard in ipairs(context.full_hand) do
                message = "?niagA"
                SMODS.calculate_effect({ xchips = 3 }, pcard)
            end
        end
    end,
    m_misprint_original = "m_feli_fag_steel_t3",
}

FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'steel_t4_mp',
    pos = { x = 3, y = 4 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = {
        extra = {
            base = 4,
            gain = 4
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.base,
                card.ability.extra.gain
            }
        }
    end,

    calculate = function(self, card, context)
        if context.main_scoring
            and context.cardarea == G.hand then
            for _, pcard in ipairs(context.full_hand) do
                message = "?niagA"
                SMODS.calculate_effect({ xchips = 4 }, pcard)
            end
        end
    end,
    m_misprint_original = "m_feli_fag_steel_t4",
}

-- Stone
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'stone_t2_mp',
    pos = { x = 1, y = 5 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { bonus = 75, extra = { original_bonus = 75, max = 20, min = -10 } }, -- can also be adjusted as need be ofc
    replace_base_card = true,
    no_rank = true,
    no_suit = true,
    always_scores = true, -- as im guessing this is still adjacent to stones this way
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.original_bonus } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            card.ability.bonus = card.ability.bonus + pseudorandom('tmtrainuh', card.ability.extra.min, card.ability.extra.max)
            if card.ability.bonus < card.ability.extra.original_bonus then card.ability.bonus = card.ability.extra.original_bonus end
            return {
                message = localize('k_upgrade_q'),
                colour = G.C.CHIPS,
                message_card = card,
            }
        end
    end,
    m_misprint_original = "m_feli_fag_stone_t2",
}
FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'stone_t3_mp',
    pos = { x = 2, y = 5 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { bonus = 150, mult = 2, extra = { original_bonus = 150, max = 20, min = -10 } }, -- can also be adjusted as need be ofc
    replace_base_card = true,
    no_rank = true,
    no_suit = true,
    always_scores = true, -- as im guessing this is still adjacent to stones this way
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.original_bonus } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            card.ability.bonus = card.ability.bonus + pseudorandom('tmtrainuh', card.ability.extra.min, card.ability.extra.max)
            if card.ability.bonus < card.ability.extra.original_bonus then card.ability.bonus = card.ability.extra.original_bonus end
            return {
                message = localize('k_upgrade_q'),
                colour = G.C.CHIPS,
                message_card = card,
            }
        end
    end,
    m_misprint_original = "m_feli_fag_stone_t3",
}
FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'stone_t4_mp',
    pos = { x = 3, y = 5 },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    config = { bonus = 250, mult = 4, extra = { original_bonus = 250, max = 20, min = -10 } }, -- can also be adjusted as need be ofc
    replace_base_card = true,
    no_rank = true,
    no_suit = true,
    always_scores = true, -- as im guessing this is still adjacent to stones this way
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.original_bonus } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            card.ability.bonus = card.ability.bonus + pseudorandom('tmtrainuh', card.ability.extra.min, card.ability.extra.max)
            if card.ability.bonus < card.ability.extra.original_bonus then card.ability.bonus = card.ability.extra.original_bonus end
            return {
                message = localize('k_upgrade_q'),
                colour = G.C.CHIPS,
                message_card = card,
            }
        end
    end,
    m_misprint_original = "m_feli_fag_stone_t4",
}

-- Gold
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'gold_t2_mp',
    pos = { x = 1, y = 6 },
    config = {h_dollars = 0, extra = { base = 2, max = 3, min = 0.5 }},
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.hand then
            local money = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.set == 'Joker' then
                    money = money + G.jokers.cards[i].sell_cost
                end
            end

            local multiply = pseudorandom('baddirectormorelikegooddirector', card.ability.extra.min*100, card.ability.extra.max*100)/100
            card.ability.h_dollars = (card.ability.extra.base + money) * multiply
        end
    end,
    m_misprint_original = "m_feli_fag_gold_t2",
}
FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'gold_t3_mp',
    pos = { x = 2, y = 6 },
    config = {h_dollars = 0, p_dollars = 2, extra = { base = 3, max = 3.5, min = 0.6 }},
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.hand then
            local money = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.set == 'Joker' then
                    money = money + G.jokers.cards[i].sell_cost
                end
            end

            local multiply = pseudorandom('baddirectormorelikegooddirector', card.ability.extra.min*100, card.ability.extra.max*100)/100
            card.ability.h_dollars = (card.ability.extra.base + money) * multiply
        end
    end,
    m_misprint_original = "m_feli_fag_gold_t3",
}
FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'gold_t4_mp',
    pos = { x = 3, y = 6 },
    config = {h_dollars = 0, p_dollars = 4, extra = { base = 4, max = 5, min = 0.7 }},
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.hand then
            local money = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.set == 'Joker' then
                    money = money + G.jokers.cards[i].sell_cost
                end
            end

            local multiply = pseudorandom('baddirectormorelikegooddirector', card.ability.extra.min*100, card.ability.extra.max*100)/100
            card.ability.h_dollars = (card.ability.extra.base + money) * multiply
        end
    end,
    m_misprint_original = "m_feli_fag_gold_t4",
}

-- Lucky
FelisAG.T2Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'lucky_t2_mp',
    pos = { x = 1, y = 2 },
    config = { extra = { mult = 30, chips = 100, dollars = 30, mult_odds = 5, chips_odds = 5, dollars_odds = 15 }, mod = {min = 0.4, max = 2.5} },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        local mult_numerator, mult_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds,
            'feli_fag_lucky_mult')
		local chips_numerator, chips_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.chips_odds,
            'feli_fag_lucky_chips')
        local dollars_numerator, dollars_denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.dollars_odds, 'feli_fag_lucky_money')
        return { vars = { mult_numerator, dollars_numerator, card.ability.extra.mult, mult_denominator, card.ability.extra.dollars, dollars_denominator, chips_numerator, chips_denominator, card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max} }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            local ret = {}
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_mult', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.mult = math.max(0.7,(card.ability.extra.mult) * modifier)
            end
			if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_chips', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.chips = math.max(0.7,(card.ability.extra.chips) * modifier)
            end
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_money', 1, card.ability.extra.dollars_odds) then
                card.lucky_trigger = true
                ret.dollars = math.max(0.7,(card.ability.extra.dollars) * modifier)
            end
            return ret
        end
    end,
    m_misprint_original = "m_feli_fag_lucky_t2",
}
FelisAG.T3Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'lucky_t3_mp',
    pos = { x = 2, y = 2 },
    config = { extra = { mult = 35, chips = 150, dollars = 35, mult_odds = 4, chips_odds = 4, dollars_odds = 12 }, mod = {min = 0.7, max = 3}  },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        local mult_numerator, mult_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds,
            'feli_fag_lucky_mult')
		local chips_numerator, chips_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.chips_odds,
            'feli_fag_lucky_chips')
        local dollars_numerator, dollars_denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.dollars_odds, 'feli_fag_lucky_money')
        return { vars = { mult_numerator, dollars_numerator, card.ability.extra.mult, mult_denominator, card.ability.extra.dollars, dollars_denominator, chips_numerator, chips_denominator, card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max} }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_mult', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.mult = math.max(0.7,(card.ability.extra.mult) * modifier)
            end
			if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_chips', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.chips = math.max(0.7,(card.ability.extra.chips) * modifier)
            end
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_money', 1, card.ability.extra.dollars_odds) then
                card.lucky_trigger = true
                ret.dollars = math.max(0.7,(card.ability.extra.dollars) * modifier)
            end
            return ret
        end
    end,
    m_misprint_original = "m_feli_fag_lucky_t3",
}
FelisAG.T4Enhancement {
	atlas = 'lover_tieredEnhancements',
    key = 'lucky_t4_mp',
    pos = { x = 3, y = 2 },
    config = { extra = { mult = 40, chips = 250, dollars = 40, mult_odds = 4, chips_odds = 4, dollars_odds = 12 }, mod = {min = 0.9, max = 4} },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
	end,
    loc_vars = function(self, info_queue, card)
        local mult_numerator, mult_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds,
            'feli_fag_lucky_mult')
		local chips_numerator, chips_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.chips_odds,
            'feli_fag_lucky_chips')
        local dollars_numerator, dollars_denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.dollars_odds, 'feli_fag_lucky_money')
        return { vars = { mult_numerator, dollars_numerator, card.ability.extra.mult, mult_denominator, card.ability.extra.dollars, dollars_denominator, chips_numerator, chips_denominator, card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max} }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_mult', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.mult = math.max(0.7,(card.ability.extra.mult) * modifier)
            end
			if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_chips', 1, card.ability.extra.mult_odds) then
                card.lucky_trigger = true
                ret.chips = math.max(0.7,(card.ability.extra.chips) * modifier)
            end
            if SMODS.pseudorandom_probability(card, 'feli_fag_lucky_money', 1, card.ability.extra.dollars_odds) then
                card.lucky_trigger = true
                ret.dollars = math.max(0.7,(card.ability.extra.dollars) * modifier)
            end
            return ret
        end
    end,
    m_misprint_original = "m_feli_fag_lucky_t4",
}

