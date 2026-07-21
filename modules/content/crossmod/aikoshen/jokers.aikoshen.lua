
local as_disabled = false
if FelisAG.is_mod_loaded("aikoyorisshenanigans") then
	as_disabled = false
else
	as_disabled = true
end

local old_check_word = AKYRS.check_word

AKYRS.check_word = function(str_arr_in)
    local AKYRS_WORDS_REF = AKYRS_WORDS
    local result = old_check_word(str_arr_in)

    
    if (result and result.valid == false) or result == nil then
        if (next(SMODS.find_card("j_feli_fag_akyrs_lexicographer")) or 
            next(SMODS.find_card("j_feli_fag_akyrs_fisher")) or 
            next(SMODS.find_card("j_feli_fag_akyrs_accountant"))) or 
            next(SMODS.find_card("j_feli_fag_akyrs_clerk")) then
            AKYRS_WORDS = LEXICOGRAPHER_DICT
            result = old_check_word(str_arr_in)
        end
    end

    AKYRS_WORDS = AKYRS_WORDS_REF
    if (result and result.valid == false) or result == nil then
        result = old_check_word(str_arr_in)
    end
    --[[
    if result and result.valid and result.word and G.GAME.aiko_words_played[result.word] then
        if (next(SMODS.find_card("clearance_feli_fag_cerulean"))) then
            result.valid = false
        end
    end
    
    
    if temp_french_check then
        AKYRS_WORDS = FRENCH_DICT
        if result == nil then
            result = old_check_word(str_arr_in)
        end
    end
    ]]

    return result
end


local tiles = {
   {key = "m_feli_fag_pp_wood", weight = 10},
   {key = "m_feli_fag_pp_crit", weight = 4},
   {key = "m_feli_fag_pp_bleed", weight = 2},
}

FelisAG.LetterJoker = SMODS.Joker:extend{
    akyrs_is_letter = true,
    in_pool = function (self, args)
        return G.GAME.akyrs_character_stickers_enabled and G.GAME.akyrs_wording_enabled or false
    end,
	no_collection = as_disabled,
	unlocked = true,
	discovered = false,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('753F8E'), HEX('A4CA5A'), 1 )
	end,
}




FelisAG.LetterJoker {
    key = "feli_fag_akyrs_lexicographer",
    atlas = 'pronounJokers',
    pos = { x = 0, y = 0 },
	pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Scrabble"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
	pronouns = "she_her",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
	config = { extra = {}, letter_opener = {used = false, max_wilds= 2} },
	can_use = function(self, card)
        return not card.ability.letter_opener.used and G.GAME.blind.in_blind
    end,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
	end,

	use = function(self, card, area, copier)
        AKYRS.simple_event_add(
            function ()
                AKYRS.fill_hand()
                for i = 1, card.ability.letter_opener.max_wilds do
                    AKYRS.simple_event_add(
                        function ()
                            local wldcrd = Card(11.5,15,G.CARD_W,G.CARD_H,pseudorandom_element(G.P_CARDS,pseudoseed("lexicographer")),G.P_CENTERS['c_base'],{playing_card = G.playing_card})
                            wldcrd.is_null = true
                            wldcrd.ability.akyrs_self_destructs = true
                            AKYRS.change_letter_to(wldcrd,"#")
                            G.hand:emplace(wldcrd)
                            return true
                        end, 0.1
                    )
                end
                card.ability.letter_opener.used = true
                return true
            end, 0
        )
    end,
    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = { key = "akyrs_self_destructs", set = "Other",}
        info_queue[#info_queue+1] = { key = "feli_fag_akyrs_wildcard", set = "Other",}
		local is_used = card.ability.letter_opener.used == true and "Used" or "Active"
		local is_used_clr = card.ability.letter_opener.used == true and G.C.RED or G.C.GREEN
        return { vars = { card.ability.letter_opener.max_wilds, localize{type = 'name_text', key = "akyrs_self_destructs", set = 'Other'}, is_used, colours = {is_used_clr}}, } 
    end,
    calculate = function(self, card, context)
		if context.ante_change and context.ante_end then
			if card.ability.letter_opener.used == true then 
				card.ability.letter_opener.used = false 
				return {
					message = localize("k_reset")
				}
			end
		end
    end
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_fisher",
    atlas = 'pronounJokers',
    pos = { x = 1, y = 0 },
	pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Scrabble"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
	pronouns = "she_they",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
	config = { extra = {}, fishing_rod = {used = false, uses = 4, max_uses= 4} },
	can_use = function(self, card)
        return not card.ability.fishing_rod.used and G.GAME.blind.in_blind
    end,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
	end,

	use = function(self, card, area, copier)
        AKYRS.simple_event_add(
            function ()
                AKYRS.fill_hand()
                AKYRS.simple_event_add(
                    function ()
                        local crd = Card(11.5,15,G.CARD_W,G.CARD_H,pseudorandom_element(G.P_CARDS,pseudoseed("fisher")),G.P_CENTERS['c_base'],{playing_card = G.playing_card})
                        crd.is_null = true
                        
                        crd:set_ability(FelisAG.quick_pool_pick(tiles))
                        G.playing_cards[#G.playing_cards+1] = crd
                        G.hand:emplace(crd)
                        return true
                    end, 0.1
                )
                card.ability.fishing_rod.uses = card.ability.fishing_rod.uses - 1
                if card.ability.fishing_rod.uses == 0 then card.ability.fishing_rod.used = true end
                return true
            end, 0
        )
        return {
			message = "-1 use",
		}
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_wood"]
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_crit"]
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_bleed"]
		local is_used = card.ability.fishing_rod.used == true and "None" or card.ability.fishing_rod.uses
		local is_used_clr = card.ability.fishing_rod.used == true and G.C.RED or G.C.FILTER
        return { vars = { card.ability.fishing_rod.max_uses, is_used, colours = {is_used_clr}}, } 
    end,
    calculate = function(self, card, context)
		if context.ante_change and context.ante_end then
            card.ability.fishing_rod.uses = card.ability.fishing_rod.max_uses
			if card.ability.fishing_rod.used == true then 
				card.ability.fishing_rod.used = false 
				return {
					message = localize("k_reset")
				}
			end
		end
    end
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_accountant",
    atlas = 'pronounJokers',
    pos = { x = 2, y = 0 },
	pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Scrabble"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
	pronouns = "she_her",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
	config = { extra = {}, letter_opener = {used = false, max_cards= 1, min_length = 2, max_length = 3} },
	can_use = function(self, card)
        return not card.ability.letter_opener.used and G.GAME.blind.in_blind
    end,
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
	end,

	use = function(self, card, area, copier)
        AKYRS.simple_event_add(
            function ()
                AKYRS.fill_hand()
                for i = 1, card.ability.letter_opener.max_cards do
                    AKYRS.simple_event_add(
                        function ()
                            local moneycrd = Card(11.5,15,G.CARD_W,G.CARD_H,pseudorandom_element(G.P_CARDS,pseudoseed("accountant")),G.P_CENTERS['m_feli_fag_pp_money'],{playing_card = G.playing_card})
                            moneycrd.is_null = true
                            moneycrd.ability.akyrs_self_destructs = true
                            --[[
                            AKYRS.simple_event_add(
                                function ()
                                    local ante = Talisman and to_number(G.GAME.round_resets.ante) or G.GAME.round_resets.ante
                                    local fct = 2 * (i - 1) - 1
                                    local max_freq = (70000/(fct))/ante^1.5 / (AKYRS.config.full_dictionary and 1 or 10)
                                    local min_freq = (15000/(fct))/ante^1.03 / (AKYRS.config.full_dictionary and 1 or 10)
                                    local prompt, freq = AKYRS.get_bomb_prompt(
                                    {
                                        min_freq = min_freq, 
                                        max_freq = max_freq, 
                                        min_length = card.ability.letter_opener.min_length, 
                                        max_length = card.ability.letter_opener.max_length, 
                                        seed = "accountingisfun"
                                    })
                                    if prompt then
                                        AKYRS.change_letter_to(moneycrd,prompt)
                                        G.hand:emplace(moneycrd)
                                        table.insert(G.playing_cards, moneycrd)
                                    end
                                    return true
                                end, 0)
                            ]]--
                            local roll = pseudorandom("accountant",1,10)
                            AKYRS.change_letter_to(moneycrd,
                                (
                                    roll <= 3 
                                    and "###" 
                                    or (roll == 4 and "####" or "##")
                                ) 
                            )
                            G.hand:emplace(moneycrd)
                            table.insert(G.playing_cards, moneycrd)
                            return true
                        end, 0.2
                    )
                end
                card.ability.letter_opener.used = true
                return true
            end, 0
        )
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_money"]
        info_queue[#info_queue+1] = { key = "akyrs_self_destructs", set = "Other",}
        info_queue[#info_queue+1] = { key = "feli_fag_akyrs_wildcard", set = "Other",}
        info_queue[#info_queue+1] = { key = "feli_fag_akyrs_ngrams", set = "Other",}
		local is_used = card.ability.letter_opener.used == true and "Used" or "Active"
		local is_used_clr = card.ability.letter_opener.used == true and G.C.RED or G.C.GREEN
        return { vars = { card.ability.letter_opener.max_cards, localize{type = 'name_text', key = "akyrs_self_destructs", set = 'Other'}, localize{type = 'name_text', key = "m_feli_fag_pp_money", set = 'Enhanced'}, is_used, colours = {is_used_clr}}, } 
    end,
    calculate = function(self, card, context)
		if context.ante_change and context.ante_end then
			if card.ability.letter_opener.used == true then 
				card.ability.letter_opener.used = false 
				return {
					message = localize("k_reset")
				}
			end
		end
    end
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_clerk",
    atlas = 'pronounJokers',
    pos = { x = 3, y = 0 },
	pools = {
        ["FelisAdditions"] = true, 
        ["Letter"] = true, 
        ["Scrabble"] = true, 
        ["Human"] = true, 
        ["Pronoun Palace"] = true, 
        ["Nxkoo"] = true, 
    },
	pronouns = "they_them",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
	config = { extra = {crit_mod = 0.10, card_amount = 3}, letter_opener = {used = false} },
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
	end,

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_crit"]
		local is_used = card.ability.letter_opener.used == true and "Used" or "Active"
		local is_used_clr = card.ability.letter_opener.used == true and G.C.RED or G.C.GREEN
        return { vars = { card.ability.extra.card_amount, localize{type = 'name_text', key = "m_feli_fag_pp_crit", set = "Enhanced"}, card.ability.extra.crit_mod, G.GAME.feli_fag_crit_boost or 0,  is_used, colours = {is_used_clr}}, } 
    end,
    calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.game_over then
			if card.ability.letter_opener.used == true then
                for i = 1, card.ability.extra.card_amount, 1 do
                    local selected_c = pseudorandom_element(G.playing_cards, 'feli_fag_akyrs_clerk')
                    local it = 1
                    while (selected_c.config.center.key ~= "m_feli_fag_pp_crit") and it <= 5 do
                        it = it + 1
                        selected_c = pseudorandom_element(G.playing_cards, 'feli_fag_akyrs_clerk'..it)
                    end
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            selected_c:juice_up(0.3, 0.5)
                            selected_c:set_ability("m_feli_fag_pp_crit")
                            return true
                        end
                    }))
                end
				card.ability.letter_opener.used = false 
			end
		end
        if context.after then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.feli_fag_crit_boost = ((G.GAME.feli_fag_crit_boost or 0) + card.ability.extra.crit_mod)
                    return true
                end
            }))

            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.crit_mod } }
            }
        end
    end,

    use = function(self, card, area, copier)
        card.ability.letter_opener.used = true
        G.GAME.feli_fag_crit_boost = 0
        
			
        return {
		    message = localize("k_reset")
		}
    end,
    can_use = function(self, card)
        return not card.ability.letter_opener.used and G.GAME.blind.in_blind and G.GAME.feli_fag_crit_boost > 0
    end,
}

local note_cards = {
    "m_akyrs_semibreve_card",
    "m_akyrs_minim_card",
    "m_akyrs_crotchet_card"

}

FelisAG.note_table = {
    ["e_base"]                 = { next = "m_akyrs_semibreve_card",},
    ["m_akyrs_semibreve_card"] = { next = "m_akyrs_minim_card",},
    ["m_akyrs_minim_card"]     = { next = "m_akyrs_crotchet_card",}, 
    ["m_akyrs_crotchet_card"]  = { next = "m_feli_fag_pp_wood",},
    ["m_feli_fag_pp_wood"]     = { next = "m_akyrs_semibreve_card",},
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_distributor",
    atlas = 'pronounJokers',
    pos = { x = 4, y = 0 },
	pools = {
        ["FelisAdditions"] = true, 
        ["Letter"] = true, 
        ["Scrabble"] = true, 
        ["Human"] = true, 
        ["Pronoun Palace"] = true, 
        ["Nxkoo"] = true, 
    },
	pronouns = "she_they",
    blueprint_compat = false,
    rarity = 2,
    cost = 6,
	config = {},
	set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
		badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
	end,

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_akyrs_semibreve_card"]
        info_queue[#info_queue+1] = G.P_CENTERS["m_akyrs_minim_card"]
        info_queue[#info_queue+1] = G.P_CENTERS["m_akyrs_crotchet_card"]
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_wood"]
        return {}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local current_tier = context.other_card.config.center.key or ""
		            local upgrade = FelisAG.campfire_table[current_tier]
                    context.other_card:set_ability(upgrade.next)
                    context.other_card:juice_up()
                    return true
                end
            }))
        end
    end,
}

--- FELI LEGENDARY
--- OTHERS

FelisAG.LetterJoker {
    key = "feli_fag_ltr_cleanslate",
    atlas = 'aikoJokers',
    pos = { x = 8, y = 0 },
	pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Scrabble"] = true  },
    blueprint_compat = true,
    rarity = 1,
    cost = 6,
	config = { extra = { chips = 50, dollars = 5} },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.dollars} }
    end,
    calculate = function(self, card, context)
		if context.joker_main then
			if  G.hand.config.card_limit - #context.scoring_hand == 0 then
				return{
					chips = card.ability.extra.chips,
					dollars = card.ability.extra.dollars
					}	
			end
		end	
	end
}
