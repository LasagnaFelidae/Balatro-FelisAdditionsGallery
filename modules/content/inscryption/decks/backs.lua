SMODS.Back{
    key = "ttm_deck",
    atlas = "insBacks",
    pos = { x = 0, y = 0},
    config = { feli_fag_totems_enabled = true, voucher = "v_feli_fag_totemmerchant"},
    set_badges = function(self, card, badges)
		badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
	end,
    loc_vars = function (self, info_queue, card)
    end,
}