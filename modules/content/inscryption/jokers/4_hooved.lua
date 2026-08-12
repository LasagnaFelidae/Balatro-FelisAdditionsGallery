FelisAG.Vermin = SMODS.Joker:extend{
    atlas = 'feli_fag_insHooved',
	pools = {
		["FelisAdditions"]=true,
		["Inscryption"] = true, 
		["Beast"] = true,
		["Hooved"] = true, 
	},
	unlocked = true,
	discovered = false,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
	end,
}

FelisAG.Vermin { -- Uncommon Pronghorn
	pos = { x = 0, y = 0},
	key = "feli_fag_ins_pronghorn",
	pronouns = "he_him",
	unlocked = true,
	discovered = false,
	rarity = 2,
	cost = 4,
	attributes = {"chips", "mult", "retrigger"},
	config = { extra = {chips = 1, mult = 3, repetitions = 1,} },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
	end,
	loc_vars = function(self, info_queue, card)
			return {
				vars = { 
					card.ability.extra.chips, 
					card.ability.extra.mult, 
					card.ability.extra.repetitions,
					1, 3,
					colours = { HEX('F0C590'), HEX('351A09'), HEX("5F5F5F"),} 
				} 
			}
	end,
	calculate = function(self, card, context)	
		if context.cardarea == G.play
		and context.repetition
		and context.other_card then
            SMODS.pseudorandom_probability(card, "meow", 1, 3, self.key, true)
			if pseudorandom("meoooooowww", 1, 3) == 3 then
				return {
					repetitions = card.ability.extra.repetitions,
				}
			end
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips,
				mult = card.ability.extra.mult
			}
		end
	end,
	blueprint_compat = true,
}