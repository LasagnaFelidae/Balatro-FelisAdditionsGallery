return {
    descriptions = {
		Tag = {
			tag_feli_fag_tag_ritual = {
				name = "Ritual Tag",
				text = {
					"Gives a free",
					"{C:feli_fag_rit}Mega Ritual Pack",
				},
			},
			tag_feli_fag_packrat_gift = {
				name = "Pack Rat\'s Gift",
				text = {
					"A gift for your troubles",
				},
			},
		},
		Other = {
			---- Boosters
			p_feli_fag_ritual_jumbo = {
                name = "Jumbo Ritual Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:feljio_rit} Ritual{} cards to",
                    "be used immediately",
                },
            },
            p_feli_fag_ritual_mega = {
                name = "Mega Ritual Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:feljio_rit} Ritual{} cards to",
                    "be used immediately",
                },
            },
            p_feli_fag_ritual_normal = {
                name = "Ritual Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:feljio_trb} Ritual{} cards to",
                    "be used immediately",
                },
            },
			p_feli_fag_pack_rat = {
                name = "Pack Rat\'s Gift",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} Playing Cards",
                },
            },
		},
		feli_fag_ritual = {
			c_feli_fag_rit_campfire = {
				name = "Campfire",
				text = {
					"Upgrade {C:attention}#1#{} selected card\'s",
					"{C:enhanced}enhancement{} to the {C:attention}next tier{}",
					"Has a {C:red}#3#%{} chance to",
					"{C:red}destroy{} the card instead",
					"{C:inactive,s:0.8}(Chance scales with {C:enhanced,s:0.8}Enhancement {C:inactive,s:0.8}Tier)",
				},
			},
			c_feli_fag_rit_trader = {
				name = "The Trader",
				text = {
					"Trade up to {C:attention}#1#{} ",
					"{C:feli_fag_ins_gld}Pelt Cards{} for {C:money}cash",
					"{C:green}#2# in #3#{} chance to give",
					"double the {C:feli_fag_ins_gld}Pelt{} value"
				},
			},
			c_feli_fag_rit_prospector = {
				name = "The Prospector",
				text = {
					"Enhance up to {C:attention}#1#{} selected cards",
					"to a random tiered {C:gold}Gold Card",
					"Fixed {C:green}1 in 3{} chance to",
					"turn it into a {C:feli_fag_ins_gld}Gold Nugget",
				},
			},
			c_feli_fag_rit_tribes = {
				name = "The Tribes",
				text = {
					"Grants a free",
					"{C:feli_fag_trb}Tribal Tag",
					"{C:inactive}(Must have Joker room)"
				},
			},
			c_feli_fag_rit_goobert = {
				name = "Goobert",
				text = {
					"Create a {C:feli_fag_goobert}Painted{} copy",
					"of {C:attention}#1#{} selected joker.",
					"{C:inactive}(Must have room)",
					"{s:0.8,C:inactive}\"I will paint! Just like The Master!\"",
				},
			},
			c_feli_fag_rit_trapper = {
				name = "The Trapper",
				text = {
					"Enhance up to {C:attention}#1#{} selected cards",
					"to a random {C:feli_fag_ins_gld}Pelt Card",
				},
			},
			c_feli_fag_rit_lostandfound = {
				name = "Lost and Found",
				text = {
					"Grants a free",
					"{C:feli_fag_trb}Totem Box Tag",
				},
			},
		},
	},
    misc = {
		dictionary={
			b_feli_fag_ritual_cards = "Ritual Cards",
			k_feli_fag_ritual_pack = "Ritual Pack",
			k_feli_fag_pack_rat = "Pack Rat\'s Gift",
			k_feli_fag_ritual = "Ritual",
		},
		labels = {
			feli_fag_ritual = "Ritual",
		},
	},
}