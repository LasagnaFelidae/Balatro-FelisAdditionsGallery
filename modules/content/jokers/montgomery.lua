SMODS.Joker {
	atlas = 'fleamarket',
	pos = { x = 0, y = 0 },
	pools = {["FelisJokeria"] = true, ["Human"] = true, ["Meme"] = true, },
	key = "felijo_fleamarket",
	rarity = 2,
	cost = 8,
	config = {
		extra = {shop_size = 1, boosters = 1, vouchers = 1, },
	},	
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.shop_size, card.ability.extra.boosters, card.ability.extra.vouchers} }
	end,
	add_to_deck = function(self, card, from_debuff)
		G.E_MANAGER:add_event(Event({
			func = function()
				change_shop_size(card.ability.extra.shop_size)
				return true
			end
		}))
	end,
	
	remove_from_deck = function(self, card, from_debuff)
		G.E_MANAGER:add_event(Event({
			func = function()
				change_shop_size(card.ability.extra.shop_size)
				return true
			end
		}))
	end,
	calculate = function(self, card, context)
		if context.starting_shop then
			for i = 1, card.ability.extra.boosters do
				G.E_MANAGER:add_event(Event({
					func = function()
						card:juice_up(0.3, 0.5)
						SMODS.add_booster_to_shop()
						return true
					end
				}))
			end
			for i = 1, card.ability.extra.vouchers do
				G.E_MANAGER:add_event(Event({
					func = function()
						card:juice_up(0.3, 0.5)
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0.2,
							func = function()
								local extra_voucher_key = get_next_voucher_key(true)
								G.shop_vouchers.config.card_limit = G.shop_vouchers.config.card_limit + 1
								local extra_card = Card(G.shop_vouchers.T.x + G.shop_vouchers.T.w/2,
								G.shop_vouchers.T.y, G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS[extra_voucher_key],{bypass_discovery_center = true, bypass_discovery_ui = true})
								create_shop_card_ui(extra_card, 'Voucher', G.shop_vouchers)
								extra_card:start_materialize()
								G.shop_vouchers:emplace(extra_card)
								return true
							end    
						}))
						return true
					end
				}))
			end
		end
	end,
	blueprint_compat = true,
}