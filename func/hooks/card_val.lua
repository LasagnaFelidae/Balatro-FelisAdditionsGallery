function FelisAG.tileEnhCheck (card)
	if (card.config.center.key == "m_feli_fag_pp_money" or 
	card.config.center.key == "m_feli_fag_pp_tarnished") then 
        return true 
    end
	return false
end


local card_chip_bonus_ref = Card.get_chip_bonus
function Card:get_chip_bonus()
    if self.is_null then self.base.nominal = 0 end
    local c = card_chip_bonus_ref(self)
    if FelisAG.tileEnhCheck(self) then
        c = 0
    end
    return c
end

local card_chip_mult_ref = Card.get_chip_mult
function Card:get_chip_mult()
    local c = card_chip_mult_ref(self)

    if self.ability.aikoyori_letters_stickers and G.GAME.akyrs_letters_mult_enabled and FelisAG.tileEnhCheck(self) then
        c = 0
    end
    return c
end

local card_chip_xm_ref = Card.get_chip_x_mult
function Card:get_chip_x_mult()
    local c = card_chip_xm_ref(self)

    if self.ability.aikoyori_letters_stickers and G.GAME.akyrs_letters_xmult_enabled and FelisAG.tileEnhCheck(self) then
        c = 1
    end
    return c
end
