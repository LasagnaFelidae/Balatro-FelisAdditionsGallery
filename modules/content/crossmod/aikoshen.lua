
local as_disabled = false
if FelisAG.is_mod_loaded("aikoyorisshenanigans") then
	as_disabled = false
else
	as_disabled = true
end

local old_check_word = AKYRS.check_word

AKYRS.check_word = function(str_arr_in)
    local AKYRS_WORDS_REF = AKYRS_WORDS

    result = old_check_word(str_arr_in)

    if (next(SMODS.find_card("j_feli_fag_akyrs_lexicographer")) or next(SMODS.find_card("j_feli_fag_akyrs_fisher"))) then
        AKYRS_WORDS = LEXICOGRAPHER_DICT
        result = old_check_word(str_arr_in)
    end

    AKYRS_WORDS = AKYRS_WORDS_REF
    if result == nil then
        result = old_check_word(str_arr_in)
    end


    --[[
    if temp_french_check then
        AKYRS_WORDS = FRENCH_DICT
        if result == nil then
            result = old_check_word(str_arr_in)
        end
    end
    ]]

    return result
end

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
	pools = {["FelisJokeria"] = true, ["Letter"] = true, ["Scrabble"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
	pronouns = "she_her",
    blueprint_compat = true,
    rarity = 1,
    cost = 4,
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
	pools = {["FelisJokeria"] = true, ["Letter"] = true, ["Scrabble"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
	pronouns = "she_the",
    blueprint_compat = true,
    rarity = 1,
    cost = 4,
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
                        local tiles = {
                            {key = "m_feli_fag_pp_wood", weight = 10},
                            {key = "m_feli_fag_pp_crit", weight = 4},
                            {key = "m_feli_fag_pp_bleed", weight = 2},
                        }
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

--- FELI LEGENDARY
--- OTHERS

FelisAG.LetterJoker {
    key = "feli_fag_ltr_cleanslate",
    atlas = 'aikoJokers',
    pos = { x = 8, y = 0 },
	pools = {["FelisJokeria"] = true, ["Letter"] = true, ["Scrabble"] = true  },
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
