local cardarea_emplace_ref = CardArea.emplace
function CardArea:emplace(card, location, stay_flipped)
    if self == G.consumeables and (card.ability.set == "feli_fag_totem_parts") then
		card:remove_from_area()
        G.feli_fag_totems:emplace(card, location, stay_flipped)
        return
    end

    if self == G.feli_fag_totems then 
        if G.GAME.feli_fag_totem_obtained_ïtem == false then
            self:change_size(1) 
        end
        G.GAME.feli_fag_totem_obtained_item = true -- flag to allow item switcher to exist
    end
    if (self == G.jokers and FelisAG.states.slot_visible ~= 1) or (self == G.feli_fag_totems  and FelisAG.states.slot_visible ~= -1) then
        G.FUNCS.toggle_totems()
        G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = function()
                cardarea_emplace_ref(self, card, location, stay_flipped)
                return true
            end
        }))
        return
    end

	cardarea_emplace_ref(self, card, location, stay_flipped)
end

local check_for_buy_space_old = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
	if card.ability.is_totem_body or card.ability.is_totem_head then
		if (#G.feli_fag_totems.cards < G.feli_fag_totems.config.card_limit) then
			return true
		else
			alert_no_space(card, G.feli_fag_totems)
			return false
		end
    end
    return check_for_buy_space_old(card)
end