if CardSleeves then
    CardSleeves.Sleeve {
        key = "ttm_deck",
        atlas = "insSleeves",
        pos = { x = 0, y = 0 },
        config = { feli_fag_totems_enabled = true},
        unlocked = false,
        unlock_condition = { deck = "b_feli_fag_ttm_deck", stake = "stake_white" },
        set_badges = function(self, card, badges)
		    badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
	    end,
        loc_vars = function (self, info_queue, card)
            local key = self.key
            if self.get_current_deck_key() == "b_feli_fag_ttm_deck" then
                self.config = { ttm_area_mod = 1, voucher = 'v_feli_fag_totemtycoon' }
                key = self.key .. "_alt"
                vars = { localize{type = 'name_text', key = self.config.voucher, set = 'Voucher'} }
            elseif self.get_current_deck_key() == "b_crv_pdeck" then
                self.config = { voucher = 'v_feli_fag_totemmerchant' }
                key = self.key .. "_crv"
                vars = { localize{type = 'name_text', key = self.config.voucher, set = 'Voucher'} }
            else
                self.config = { voucher = 'v_feli_fag_totemmerchant' }
                vars = { localize{type = 'name_text', key = self.config.voucher, set = 'Voucher'} }
            end

            return {
                key = key,
                vars = vars
            }
        end,
        apply = function(self, sleeve)
            if (sleeve.config.feli_fag_totems_enabled) then
                G.GAME.feli_fag_totems_enabled = sleeve.config.feli_fag_totems_enabled
            end
            if self.get_current_deck_key() == "b_feli_fag_ttm_deck" then
                G.E_MANAGER:add_event(Event({
					func = function()
                        local applied = false
                        if not applied then
                            G.feli_fag_totems.config.card_limit = G.feli_fag_totems.config.card_limit + 1
                            applied = true
                        end
                        return true
                    end
				}))
                
            end
            if self.get_current_deck_key() == "b_crv_pdeck" then
                G.E_MANAGER:add_event(Event({
					func = function()
                        local applied = false
                        if not applied then
                            SMODS.add_card({key="c_feli_fag_ttm_hd_crv_printer", area = G.consumeables})
                            applied = true
                        end
                        return true
                    end
				}))
                
            end
            CardSleeves.Sleeve.apply(sleeve)
        end,
    }
end