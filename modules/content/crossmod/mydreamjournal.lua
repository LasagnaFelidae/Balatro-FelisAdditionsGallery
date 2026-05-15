if ( SMODS.Mods["MyDreamJournal"] or {} ).can_load then
	if not MyDreamJournal then
		MyDreamJournal = {}
	end
	fallbackjournal = MyDreamJournal
else
	fallbackjournal = {}
	fallbackjournal.multmodkeys = {
		['mult'] = 'add', ['h_mult'] = 'add', ['mult_mod'] = 'add',
		['x_mult'] = 'mult', ['xmult'] = 'mult', ['Xmult'] = 'mult', ['x_mult_mod'] = 'mult', ['Xmult_mod'] = 'mult',
		['e_mult'] = 'expo', ['emult'] = 'expo', ['Emult_mod'] = 'expo',
		['ee_mult'] = 'tetra', ['eemult'] = 'tetra', ['EEmult_mod'] = 'tetra',
		['eee_mult'] = 'penta', ['eeemult'] = 'penta', ['EEEmult_mod'] = 'penta',
		['hypermult'] = 'hyper', ['hyper_mult'] = 'hyper', ['hypermult_mod'] = 'hyper',
		-- Other mods can add their custom operations to this table.
	}
	fallbackjournal.chipmodkeys = {
		['chips'] = 'add', ['h_chips'] = 'add', ['chip_mod'] = 'add',
		['x_chips'] = 'mult', ['xchips'] = 'mult', ['Xchip_mod'] = 'mult',
		['e_chips'] = 'expo', ['echips'] = 'expo', ['Echip_mod'] = 'expo',
		['ee_chips'] = 'tetra', ['eechips'] = 'tetra', ['EEchip_mod'] = 'tetra',
		['eee_chips'] = 'penta', ['eeechips'] = 'penta', ['EEEchip_mod'] = 'penta',
		['hyperchips'] = 'hyper', ['hyper_chips'] = 'hyper', ['hyperchip_mod'] = 'hyper',
		-- Other mods can add their custom operations to this table.
	}
	fallbackjournal.scoremodkeys = {
		['score'] = 'add', ['h_score'] = 'add', ['score_mod'] = 'add',
		['x_score'] = 'mult', ['xscore'] = 'mult', ['Xscore_mod'] = 'mult',
		['e_score'] = 'expo', ['escore'] = 'expo', ['Escore_mod'] = 'expo',
		['ee_score'] = 'tetra', ['eescore'] = 'tetra', ['EEscore_mod'] = 'tetra',
		['eee_score'] = 'penta', ['eeescore'] = 'penta', ['EEEscore_mod'] = 'penta',
		['hyperscore'] = 'hyper', ['hyper_score'] = 'hyper', ['hyperscore_mod'] = 'hyper',
		-- Other mods can add their custom operations to this table.
	}
	fallbackjournal.blindsizemodkeys = {
		['blindsize'] = 'add', ['h_blindsize'] = 'add', ['blindsize_mod'] = 'add', ['blind_size'] = 'add', ['h_blind_size'] = 'add', ['blind_size_mod'] = 'add',
		['x_blindsize'] = 'mult', ['xblindsize'] = 'mult', ['Xblindsize_mod'] = 'mult', ['x_blind_size'] = 'mult', ['xblind_size'] = 'mult', ['Xblind_size_mod'] = 'mult',
		['e_blindsize'] = 'expo', ['eblindsize'] = 'expo', ['Eblindsize_mod'] = 'expo',
		['ee_blindsize'] = 'tetra', ['eeblindsize'] = 'tetra', ['EEblindsize_mod'] = 'tetra',
		['eee_blindsize'] = 'penta', ['eeeblindsize'] = 'penta', ['EEEblindsize_mod'] = 'penta',
		['hyperblindsize'] = 'hyper', ['hyper_blindsize'] = 'hyper', ['hyperblindsize_mod'] = 'hyper',
		-- Other mods can add their custom operations to this table.
	}
	fallbackjournal.keystonumbers = {
		["add"] = -1, ["mult"] = 0, ["expo"] = 1, ["tetra"] = 2, ["penta"] = 3, ["hyper"] = 4
	}
	-- slop
	local slop_key = {
		'MDJ_amount',
		'MDJ_key',
	}
	for _, v in ipairs(slop_key) do
		table.insert(SMODS.other_calculation_keys or SMODS.calculation_keys or {}, v)
		if SMODS.silent_calculation then
			SMODS.silent_calculation[v] = true
		end
	end
	local sslopcalc = SMODS.update_context_flags
	SMODS.update_context_flags = function(context, flags)
		if flags.MDJ_key then context.MDJ_key = flags.MDJ_key end
		if flags.MDJ_amount then context.MDJ_amount = flags.MDJ_amount end
		if flags.MDJ_og_key then context.MDJ_og_key = flags.MDJ_og_key end
		return sslopcalc(context, flags)
	end
	local vanilla_jank_fixer = Card.calculate_joker
	function Card.calculate_joker(self, context)
		local ret = vanilla_jank_fixer(self, context)
		if not (self.config.center.mod or self.config.original_mod) and type(ret) == "table" then
			if ret.Xmult_mod then
				ret.x_mult = ret.Xmult_mod
				ret.Xmult_mod = nil
				ret.message = nil
			end
			if ret.mult_mod then
				ret.mult = ret.mult_mod
				ret.mult_mod = nil
				ret.message = nil
			end
			if ret.chip_mod then
				ret.chips = ret.chip_mod
				ret.chip_mod = nil
				ret.message = nil
			end
			if ret.xblindsize_mod then
				ret.xblindsize = ret.xblindsize_mod
				ret.xblindsize_mod = nil
				ret.message = nil
			end
			if ret.blindsize_mod then
				ret.blindsize = ret.blindsize_mod
				ret.blindsize_mod = nil
				ret.message = nil
			end
			if ret.score_mod then
				ret.score = ret.score_mod
				ret.score_mod = nil
				ret.message = nil
			end
		end
		return ret
	end
	local calcindiveffectref = SMODS.calculate_individual_effect
	SMODS.calculate_individual_effect = function(effect, scored_card, key, amount, from_edition)
		local is_demicolon = nil
		-- a scored_card could SOMEHOW not have a center, therefor crashing the game without these checks >:(
		if scored_card and scored_card.config and scored_card.config.center then
			is_demicolon = (scored_card.config.center.key == "j_cry_demicolon")
		end
		if key and amount and key ~= 'MDJ_key' and key ~= 'MDJ_amount' and not effect.no_alter then
			local alter = SMODS.calculate_context({MDJ_mod_key_and_amount = true, MDJ_amount = amount, MDJ_key = key, demicolon_racism = is_demicolon})
			key = (alter and alter.MDJ_key) or key
			amount = (alter and alter.MDJ_amount) or amount
		end
		-- slop
		if key == 'MDJ_key' or key == 'MDJ_amount' or key == 'MDJ_og_key' or key == 'MDJ_og_amount' or key == 'from_mindware_lol' then
			return { [key] = amount }
		end
		local ret = calcindiveffectref(effect, scored_card, key, amount, from_edition)
		if ret then return ret end
	end
end

