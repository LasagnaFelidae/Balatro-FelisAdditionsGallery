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
		badges[#badges+1] = create_badge(localize('k_felijo_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
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

FELIJO.T2Enhancement {
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
		badges[#badges+1] = create_badge(localize('k_felijo_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
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

FELIJO.T3Enhancement {
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
		badges[#badges+1] = create_badge(localize('k_felijo_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
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

FELIJO.T4Enhancement {
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
		badges[#badges+1] = create_badge(localize('k_felijo_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
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

-- Bonus
FELIJO.T2Enhancement {
	atlas = 'tieredEnhancements',
    key = 'bonus_t2',
    pos = { x = 1, y = 0 },
    config = { extra = {chips = 60}, mod = {min = 0.7, max = 2}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				chips = math.max(0.7,(card.base.id * card.ability.extra.bonus) * modifier)
			}
		end
	end,
}

FELIJO.T3Enhancement {
	atlas = 'tieredEnhancements',
    key = 'bonus_t3',
    pos = { x = 2, y = 0 },
    config = { extra = {chips = 120}, mod = {min = 0.8, max = 2.2}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				chips = math.max(0.8,(card.base.id * card.ability.extra.bonus) * modifier)
			}
		end
	end,
}

FELIJO.T4Enhancement {
	atlas = 'tieredEnhancements',
    key = 'bonus_t4',
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
				chips = math.max(1,(card.base.id * card.ability.extra.bonus) * modifier)
			}
		end
	end,
}

-- Mult
FELIJO.T2Enhancement {
    atlas = 'tieredEnhancements',
    key = 'mult_t2',
    pos = { x = 1, y = 1 },
    config = { extra = {mult = 8}, mod = {min = 0.9, max = 2.5}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.base.id * card.ability.extra.mult) * modifier)
			}
		end
	end,
}

FELIJO.T3Enhancement {
    atlas = 'tieredEnhancements',
    key = 'mult_t3',
    pos = { x = 2, y = 1 },
    config = { extra = {mult = 16 }, mod = {min = 0.9, max = 2.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.base.id * card.ability.extra.mult) * modifier)
			}
		end
	end,
}

FELIJO.T4Enhancement {
    atlas = 'tieredEnhancements',
    key = 'mult_t4',
    pos = { x = 3, y = 1 },
    config = { extra = {mult = 32}, mod = {min = 0.9, max = 2.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.mod.min, card.ability.mod.max } }
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
            local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {
				mult = math.max(1,(card.base.id * card.ability.extra.mult) * modifier)
			}
		end
	end,
}

-- Glass
FELIJO.T2Enhancement {
	atlas = 'tieredEnhancements',
    key = 'glass_t2',
    pos = { x = 1, y = 3 },
    config = { extra = {xmult = 2.5, odds = 4 }, mod = {min = 0.7, max = 2.5}  },
    shatters = true,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'felijo_glass')
        return { vars = { card.ability.extra.xmult, numerator, denominator, card.ability.mod.min,card.ability.mod.max, } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and
            SMODS.pseudorandom_probability(card, 'felijo_glass', 1, card.ability.extra.odds) then
            card.glass_trigger = true -- SMODS addition
            return { remove = true }
		elseif context.cardarea == G.play then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}

FELIJO.T3Enhancement {
	atlas = 'tieredEnhancements',
    key = 'glass_t3',
    pos = { x = 2, y = 3 },
    config = { extra = {xmult = 3, odds = 6 }, mod = {min = 0.8, max = 3}  },
    shatters = true,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'felijo_glass')
        return { vars = { card.ability.extra.xmult, numerator, denominator, card.ability.mod.min,card.ability.mod.max,  } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and
            SMODS.pseudorandom_probability(card, 'felijo_glass', 1, card.ability.extra.odds) then
            card.glass_trigger = true -- SMODS addition
            return { remove = true }
		elseif context.cardarea == G.play then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}

FELIJO.T4Enhancement {
	atlas = 'tieredEnhancements',
    key = 'glass_t4',
    pos = { x = 3, y = 3 },
    config = { extra = {xmult = 5, odds = 8 }, mod = {min = 0.9, max = 3.5}  },
    shatters = true,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'felijo_glass')
        return { vars = { card.ability.extra.xmult, numerator, denominator, card.ability.mod.min,card.ability.mod.max,  } }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and
            SMODS.pseudorandom_probability(card, 'felijo_glass', 1, card.ability.extra.odds) then
            card.glass_trigger = true -- SMODS addition
            return { remove = true }
		elseif context.cardarea == G.play then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}

-- Steel
FELIJO.T2Enhancement {
	atlas = 'tieredEnhancements',
    key = 'steel_t2',
    pos = { x = 1, y = 4 },
    config = { extra = {xmult = 2.5,}, mod = {min = 0.7, max = 2.5}  },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.mod.min, card.ability.mod.max,  } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}

FELIJO.T2Enhancement {
	atlas = 'tieredEnhancements',
    key = 'steel_t2',
    pos = { x = 1, y = 4 },
    config = { extra = {xmult = 3,}, mod = {min = 0.7, max = 2.5}  },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.mod.min, card.ability.mod.max,  } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}

FELIJO.T2Enhancement {
	atlas = 'tieredEnhancements',
    key = 'steel_t2',
    pos = { x = 1, y = 4 },
    config = { extra = {xmult = 4,}, mod = {min = 0.7, max = 2.5}  },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.mod.min, card.ability.mod.max,  } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand then
			local modifier = pseudorandom(pseudoseed("sayasukakamu"), card.ability.mod.min, card.ability.mod.max)
			return {xmult = math.max(0.7,(card.base.id * card.ability.extra.xmult) * modifier)}
		end
    end,
}