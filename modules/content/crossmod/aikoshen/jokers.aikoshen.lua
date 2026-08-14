
local as_disabled = false
if FelisAG.is_mod_loaded("aikoyorisshenanigans") then
    as_disabled = false
else
    as_disabled = true
end

local old_check_word = AKYRS.check_word
FelisAG.dict_ref = AKYRS_WORDS
AKYRS.check_word = function(str_arr_in)
    local AKYRS_WORDS_REF = AKYRS.dict_ref
    
    AKYRS.get_dictionary = function() return "AKYRS_WORDS" end
    local result = old_check_word(str_arr_in)
    
    
    if (result and (result.valid == false or result.valid == nil)) or result == nil then
        for i, joker in ipairs(G.jokers.cards) do
            if joker:has_attribute("pp_dict") or next(SMODS.find_card("v_feli_fag_akyrs_dict_lexi")) then
                if AKYRS.get_dictionary then AKYRS.get_dictionary = function() return "LEXICOGRAPHER_DICT" end else AKYRS_WORDS = LEXICOGRAPHER_DICT end 
                result = old_check_word(str_arr_in)
                break
            end
        end
    end


    if (result and (result.valid == false or result.valid == nil)) or result == nil then
        for i, joker in ipairs(G.jokers.cards) do
            if joker:has_attribute("fr_dict") or next(SMODS.find_card("v_feli_fag_akyrs_dict_fr")) then
                if AKYRS.get_dictionary then AKYRS.get_dictionary = function() return "FRENCH_DICT" end else AKYRS_WORDS = FRENCH_DICT end 
                result = old_check_word(str_arr_in)
                break
            end
        end
    end

    if AKYRS.get_dictionary then AKYRS.get_dictionary = function() return "AKYRS_WORDS" end else AKYRS_WORDS = AKYRS_WORDS_REF end
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
    {key = "m_feli_fag_pp_plastic", weight = 10},
    {key = "m_feli_fag_pp_bomb", weight = 4},
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
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
    pronouns = "she_her",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    config = { extra = {}, letter_opener = {used = false, max_wilds= 2} },
    attributes = {"pp_dict", "generation", "active", "enhancements"},
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
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
    pronouns = "she_they",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    config = { extra = {}, fishing_rod = {used = false, uses = 4, max_uses= 4} },
    attributes = {"pp_dict", "generation", "active", "enhancements"},
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
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
    pronouns = "she_her",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    config = { extra = {}, letter_opener = {used = false, max_cards= 1, min_length = 2, max_length = 3} },
    attributes = {"pp_dict", "generation", "active", "enhancements"},
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
        ["Human"] = true, 
        ["Pronoun Palace"] = true, 
        ["Nxkoo"] = true, 
    },
    pronouns = "they_them",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    attributes = {"pp_dict", "modify_card", "active", "passive", "enhancements"},
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
        
        return {
            message = localize("k_reset"), card = card
        }
    end,
    can_use = function(self, card)
        return not card.ability.letter_opener.used and G.GAME.blind.in_blind and (G.GAME.feli_fag_crit_boost and G.GAME.feli_fag_crit_boost > 0)
    end,
}



FelisAG.note_table = {
    ["c_base"]                 = { next = "m_akyrs_semibreve_card",},
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
        ["Human"] = true, 
        ["Pronoun Palace"] = true, 
        ["Nxkoo"] = true, 
    },
    pronouns = "she_they",
    blueprint_compat = false,
    rarity = 2,
    cost = 6,
    attributes = {"pp_dict", "modify_card", "active", "enhancements"},
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
        if context.after then
            for i = 1, #context.scoring_hand do
                local percent = 0.85 + (i - 0.999) / (#context.scoring_hand - 0.998) * 0.5
                G.E_MANAGER:add_event(Event({
                    trigger = 'after', 
                    delay = 0.35,
                    func = function()
                        local current_tier = context.scoring_hand[i].config.center.key or ""
                        local upgrade = FelisAG.note_table[current_tier]
                        
                        if upgrade then
                            
                            play_sound('feli_fag_aiko_note'..pseudorandom(percent,1,6), percent, 0.6)
                            context.scoring_hand[i]:set_ability(upgrade.next)
                            context.scoring_hand[i]:juice_up(0.4, 0.4)
                        end
                        return true
                    end
                }))
            end
        end
    end,
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_mycologists",
    atlas = 'pronounJokers',
    pos = { x = 5, y = 0 },
    pools = {
        ["FelisAdditions"] = true, 
        ["Letter"] = true, 
        ["Pronoun Palace"] = true,
        ["Inscryption"] = true, 
        ["Human"] = true 
    },
    pronouns = "they_them",
    blueprint_compat = false,
    rarity = 2,
    cost = 6,
    config = { extra = {}, letter_opener = {used = false} },
    attributes = {"pp_dict", "modify_card", "active", "enhancements"},
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
    end,
    
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_crit"]
        
        return {}
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and not context.game_over then
            if card.ability.letter_opener.used == true then
                card.ability.letter_opener.used = false 
                return {
                    message = localize("k_reset")
                }
            end
        end
    end,
    
    use = function(self, card, area, copier)
        card.ability.letter_opener.used = true
        local c1, c2 = G.hand.highlighted[1], G.hand.highlighted[2]
        local l1, l2 = c1.ability.aikoyori_letters_stickers, c2.ability.aikoyori_letters_stickers
        SMODS.destroy_cards(c1)
        SMODS.destroy_cards(c2)
        AKYRS.simple_event_add(
        function ()
            AKYRS.fill_hand()
            AKYRS.simple_event_add(
            function ()
                local moneycrd = Card(11.5,15,G.CARD_W,G.CARD_H,pseudorandom_element(G.P_CARDS,pseudoseed("accountant")),G.P_CENTERS['m_feli_fag_pp_crit'],{playing_card = G.playing_card})
                moneycrd.is_null = true
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
                AKYRS.change_letter_to(moneycrd,
                (
                l1..l2
                ) 
            )
            G.hand:emplace(moneycrd)
            table.insert(G.playing_cards, moneycrd)
            moneycrd:add_sticker("feli_fag_stk_stitched", true)
            return true
        end, 0.2
    )
    card.ability.letter_opener.used = true
    return true
    end, 0
    )
    end,
    can_use = function(self, card)
        if (not card.ability.letter_opener.used) and G.GAME.blind.in_blind then
            if G.hand and #G.hand.highlighted == 2 then
                local c1, c2 = G.hand.highlighted[1], G.hand.highlighted[2]
                local l1, l2 = c1.ability.aikoyori_letters_stickers, c2.ability.aikoyori_letters_stickers
                if string.lower(l1) == string.lower(l2) then
                    return true
                end
            end
        end
        return false
    end,
}
local suffixes = { 
    {key = "ness", weight = 1},
    {key = "ment", weight = 1},
    {key = "tion", weight = 1},
    {key = "sion", weight = 1},
    {key = "ship", weight = 1},
    {key = "hood", weight = 1},
    {key = "ance", weight = 1},
    {key = "ence", weight = 1},
    {key = "ble", weight = 3},
    {key = "ial", weight = 3},
    {key = "est", weight = 3},
    {key = "ful", weight = 3},
    {key = "ing", weight = 3},
    {key = "ion", weight = 3},
    {key = "ity", weight = 3},
    {key = "ive", weight = 3},
    {key = "ess", weight = 3},
    {key = "ist", weight = 3},
    {key = "ous", weight = 3},
    {key = "er", weight = 3},
    {key = "al", weight = 3},
    {key = "eer", weight = 3},
    {key = "ery", weight = 3},
    {key = "age", weight = 3},
    {key = "ure", weight = 3},
    {key = "th", weight = 3},
    {key = "ant", weight = 3},
    {key = "able", weight = 1},
    {key = "ible", weight = 1},
    {key = "ant", weight = 3},
    {key = "ary", weight = 3},
    {key = "ty", weight = 3},
    {key = "or", weight = 3},
    {key = "cal", weight = 3},
    {key = "ic", weight = 3},
    {key = "ed", weight = 3},
}
FelisAG.LetterJoker {
    key = "feli_fag_akyrs_paradigm",
    atlas = 'pronounJokers',
    pos = { x = 6, y = 0 },
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Human"] = true, ["Pronoun Palace"] = true,  },
    pronouns = "he_him",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    attributes = {"pp_dict", "generation", "xblind", "passive", "enhancements"},
    config = { extra = {xblind = 0.05}, letter_opener = {used = false, max_cards= 3, min_length = 2, max_length = 4} },
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
    end,
    
    add_to_deck = function(self, card, from_debuff)
        AKYRS.scrabble_scores["-"] = 2
    end,
    
    
    
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS["m_feli_fag_pp_bomb"]
        info_queue[#info_queue+1] = { key = "akyrs_self_destructs", set = "Other",}
        info_queue[#info_queue+1] = { key = "feli_fag_akyrs_fixes", set = "Other",}
        local cards = math.min((G.GAME and G.GAME.current_round and G.GAME.current_round.hands or 1), 2)
        local ante = 1-math.abs(Talisman and to_number(G.GAME.round_resets.ante) or G.GAME.round_resets.ante)*card.ability.extra.xblind
        local is_used = card.ability.letter_opener.used == true and "Used" or "Active"
        local is_used_clr = card.ability.letter_opener.used == true and G.C.RED or G.C.GREEN
        return { vars = { ante, cards, localize{type = 'name_text', key = "akyrs_self_destructs", set = 'Other'}, localize{type = 'name_text', key = "m_feli_fag_pp_bomb", set = 'Enhanced'}, colours = {is_used_clr}}, } 
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn and context.hand_drawn then
            AKYRS.simple_event_add(
            function ()
                AKYRS.fill_hand()
                local cards = math.min((G.GAME and G.GAME.current_round and G.GAME.current_round.hands or 1), 2)
                for i = 1, cards do
                    AKYRS.simple_event_add(
                    function ()
                        local caca = 'm_feli_fag_pp_bomb'
                        local moneycrd = Card(
                        11.5,
                        15,
                        G.CARD_W,
                        G.CARD_H,
                        pseudorandom_element(G.P_CARDS,pseudoseed("accountant")),
                        G.P_CENTERS[caca],
                        {playing_card = G.playing_card})
                        moneycrd.is_null = true
                        moneycrd.ability.akyrs_self_destructs = true
                        moneycrd.ability.akyrs_pinned_right = true
                        moneycrd.ability.extra_slots_used = -1
                        AKYRS.simple_event_add(
                        function ()
                            local ante = Talisman and to_number(G.GAME.round_resets.ante) or G.GAME.round_resets.ante
                            local fct = 2 * (i - 1) - 1
                            local max_freq = (70000/(fct))/ante^1.5 / (AKYRS.config.full_dictionary and 1 or 10)
                            local min_freq = (15000/(fct))/ante^1.03 / (AKYRS.config.full_dictionary and 1 or 10)
                            local prompt = FelisAG.quick_pool_pick(suffixes)
                            if prompt then
                                AKYRS.change_letter_to(moneycrd,prompt)
                                
                                G.hand:emplace(moneycrd)
                                table.insert(G.playing_cards, moneycrd)
                            end
                            return true
                        end, 0
                    )
                    return true
                end, 0.2
            )
        end
        card.ability.letter_opener.used = true
        return true
    end, 0
)
local ante = math.abs(Talisman and to_number(G.GAME.round_resets.ante) or G.GAME.round_resets.ante)
return {
    xblind = 1 - ante*card.ability.extra.xblind
}
end
end
}

FelisAG.LetterJoker {
    key = "feli_fag_akyrs_public_broadcast",
    atlas = 'pronounJokers',
    pos = { x = 8, y = 0 },
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Object"] = true, ["Other"] = true, ["Pronoun Palace"] = true,  },
    pronouns = "he_him",
    attributes = {"pp_dict", "passive", "poker_hands", "retrigger",},
    blueprint_compat = false,
    rarity = 2,
    cost = 6,
    config = { 
        word = {
            crit_table = {0,0,1,0,1,0,2,0}, 
            max_len = 8, --to set the hand size 
            len_diff = 0, -- to revert the previous hand size
        } 
    },
    
    loc_vars = function(self, info_queue, card)
        
        local pos = card.ability.word.crit_table
        local c0,c1,c2,c3 = G.C.UI.TEXT_DARK, G.C.MONEY, G.C.PURPLE, G.C.DARK_EDITION
        return { 
            vars = { 
                card.ability.word.max_len,
                pos[2],pos[3],pos[4],pos[5],pos[6],pos[7],pos[8], 
                colours = { 
                    ((pos[2] == 0 and c0) or (pos[2] == 1 and c1) or (pos[2] == 2 and c2) or c3),
                    ((pos[3] == 0 and c0) or (pos[3] == 1 and c1) or (pos[3] == 2 and c2) or c3),
                    ((pos[4] == 0 and c0) or (pos[4] == 1 and c1) or (pos[4] == 2 and c2) or c3),
                    ((pos[5] == 0 and c0) or (pos[5] == 1 and c1) or (pos[5] == 2 and c2) or c3),
                    ((pos[6] == 0 and c0) or (pos[6] == 1 and c1) or (pos[6] == 2 and c2) or c3),
                    ((pos[7] == 0 and c0) or (pos[7] == 1 and c1) or (pos[7] == 2 and c2) or c3),
                    ((pos[8] == 0 and c0) or (pos[8] == 1 and c1) or (pos[8] == 2 and c2) or c3),
                }
            }, 
        } 
    end,
    updateMultipliers = function(self)
        local seed = pseudoseed("feli_fag_akyrs_public_broadcast")
        local r1,r2,r3 =    ((pseudorandom(seed,1,2) == 1 and 1) or 0), --three immutable rolls, rarer than the last
        ((pseudorandom(seed,1,4) == 1 and 1) or 0), 
        ((pseudorandom(seed,1,5) == 1 and 1) or 0)
        extra_crits = r1 + r2 + r3 -- sum of the three rolls to see if we add more crits :)
        
        local crit_table = {0,0,0,0,0,0,0,0}
        local positions = {2,3,4,5,6,7,8} -- propal elmer has the first tile always be basic
        local max_crits = 3 + extra_crits -- refered as n later on
        local selected_pos = {} 
        local it = 0
        local valid = false
        
        while not valid and it < 10 do
            it = it + 1
            selected_pos = {}
            local two_four = false --check if atleast one crit is in pos 2-4
            local five_eight = false --check if atleast one crit is in pos 5-8  (both per pp)
            
            FelisAG.table_shuffle(positions) -- shuffle the positions around
            
            
            for i = 1, max_crits do
                table.insert(selected_pos, positions[i]) -- picks the first n tiles as selected positions
            end
            table.sort(selected_pos)
            
            
            for _, pos in ipairs(selected_pos) do
                if pos >= 2 and pos <= 4 then two_four = true end
                if pos >= 5 and pos <= 8 then five_eight = true end
            end
            
            valid = two_four and five_eight
        end
        
        if not (valid) then
            selected_pos = {3, 5, 7} -- if it failed 10 times (lol?) then add this fallback bs
        end
        
        
        local tile_bag = {2, 1, 1, 1, 1, 2, 2, 2, 1, 3, 1, 1, 0, 1, 2, 2, 0, 3} -- a bag of possible tiles because idw use FelisAG.quick_pool_pick
        FelisAG.table_shuffle(tile_bag)
        
        for i, pos in ipairs(selected_pos) do
            crit_table[pos] = tile_bag[i]
        end
        
        return crit_table
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_feli_fag_pronounpalace'), HEX('E8C99A'), G.C.UI.TEXT_DARK,  1 )
        badges[#badges+1] = create_badge(localize('k_feli_fag_aikoshen'), HEX('A4CA5A'), HEX('753F8E'),  1 )
    end,
    
    add_to_deck = function(self, card, from_debuff)
        if G.GAME.starting_params.play_limit ~= 1e+100 then
            card.ability.word.len_diff = card.ability.word.max_len - G.GAME.starting_params.play_limit
            SMODS.change_play_limit(card.ability.word.len_diff)
            SMODS.change_discard_limit(card.ability.word.len_diff)
        else
            card.ability.word.len_diff = 1e+100
            G.GAME.starting_params.play_limit = card.ability.word.max_len
            G.GAME.starting_params.discard_limit = card.ability.word.max_len
            G.hand.config.highlighted_limit = math.max(G.GAME.starting_params.discard_limit, G.GAME.starting_params.play_limit, 5)
            SMODS.update_hand_limit_text(true, true)
        end
        
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.word.len_diff ~= 1e+100 then
            SMODS.change_play_limit(-card.ability.word.len_diff)
            SMODS.change_discard_limit(-card.ability.word.len_diff)
        else
            G.GAME.starting_params.play_limit = card.ability.word.len_diff
            G.GAME.starting_params.discard_limit = card.ability.word.len_diff
            G.hand.config.highlighted_limit = math.max(G.GAME.starting_params.discard_limit, G.GAME.starting_params.play_limit, 5)
            SMODS.update_hand_limit_text(true, true)
        end
    end,
    
    calculate = function(self, card, context)
        
        if context.after then
            G.E_MANAGER:add_event(Event({
                trigger = 'after', 
                delay = 0.35,
                func = function()
                    card.ability.word.crit_table = self:updateMultipliers()
                    return true
                end
            }))
            return { message = localize("k_reset")}
        end
        
        
        
        if context.cardarea == G.play and context.other_card and context.scoring_hand then
            local other_pos = 0
            for i, c in ipairs(context.scoring_hand) do
                if c == context.other_card then
                    other_pos = i
                    break
                end
            end
            
            if other_pos then

                local rtrs = card.ability.word.crit_table[other_pos]
                if rtrs > 0 and context.repetition then 
                    return {
                        repetitions = rtrs or 0,
                        message = localize("k_again_ex")
                    }
                end
            end
            
        end
    end
}
FelisAG.LetterJoker {
    key = "feli_fag_akyrs_mba",
    atlas = 'pronounJokers',
    pos = { x = 9, y = 1 },
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Object"] = true, ["Pronoun Palace"] = true,  },
    blueprint_compat = true,
    rarity = 1,
    cost = 6,
    config = { extra = {h_size = 1, chips_m = 3, chips = 0}, word = { length = 3, mba = true} },
    attributes = {"hands", "chips", "scaling",},
    loc_vars = function(self, info_queue, card)
        local hand = AKYRS.prefix.."_"..card.ability.word.length.."-letter Word"
        return { vars = { card.ability.extra.chips_m, localize(hand, 'poker_hands'), card.ability.extra.h_size, card.ability.extra.chips, } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local word = G.GAME.aiko_current_word
            
            if not word then return {} end
            word = string.lower(word)

            if #word == card.ability.word.length then
                ease_hands_played(card.ability.extra.h_size)
                card.ability.word.mba = false
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "chips",
                    scalar_value = "chips_m",
                })
            end
            return{
                chips = card.ability.extra.chips,
            }	
        end

        if context.end_of_round and not context.game_over then
            card.ability.word.mba = true
        end
    end
}

--- FELI LEGENDARY
--- OTHERS

FelisAG.LetterJoker {
    key = "feli_fag_ltr_akyrs_paper_shredder",
    atlas = 'pronounJokers',
    pos = { x = 8, y = 1 },
    pools = {["FelisAdditions"] = true, ["Letter"] = true, ["Object"] = true, ["Pronoun Palace"] = true,  },
    blueprint_compat = true,
    rarity = 1,
    cost = 6,
    config = { extra = { chips = 10, dollars = 1} },
    attributes = {"hands", "chips", "economy",},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.dollars} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if (G.hand.config.card_limit - #context.scoring_hand <= 0) and #G.hand.cards == 0 then
                return{
                    chips = card.ability.extra.chips * #context.scoring_hand,
                    dollars = card.ability.extra.dollars * #context.scoring_hand
                }	
            end
        end	
    end
}
