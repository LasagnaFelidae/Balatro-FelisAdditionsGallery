---ily
return {
    descriptions = {
        feli_fag_ritual_mp = {
			c_feli_fag_rit_campfire_mp = {
				name = "ireCampf",
				text = {
					"Upgrade {C:attention}#1#{} selected card\'s",
					"{C:enhanced}enhancement{} to the {C:attention}next tier{}",
                    "Fixed {C:green}1 in 3{} chance to",
                    "{C:dark_edition}misprint the {C:enhanced}enhancement{}",
					"Has a {C:red}#3#%{} chance to",
					"{C:red}destroy{} the card instead",
					"{C:inactive,s:0.8}(Chance scales with {C:enhanced,s:0.8}Enhancement {C:inactive,s:0.8}Tier)",
				},
			},
			c_feli_fag_rit_trader_mp = {
				name = "derThe Tra",
				text = {
					"Trade up to {C:attention}#1#{} ",
					"{C:feli_fag_ins_gld}Pelt Cards{} for {X:gold,C:white}$X#4# ~ $X#5#{}",
					"{C:green}#2# in #3#{} chance to give",
					"double the {C:feli_fag_ins_gld}Pelt{} value"
				},
			},
			c_feli_fag_rit_prospector_mp = {
				name = "ctorThe Prospe",
				text = {
					"Enhance up to {C:attention}#1#{} selected cards",
					"to a random tiered {C:gold}old CardG",
					"Fixed {C:green}1 in 3{} chance to",
					"turn it into a {C:dark_edition}Misprinted",
                    "{C:feli_fag_ins_gld}Gold Nugget{} instead"
				},
			},
			c_feli_fag_rit_goobert_mp = {
				name = "ertGoob",
				text = {
					"Create a {C:dark_edition}Misprinted {C:feli_fag_goobert}Painted{} copy",
					"of {C:attention}#1#{} selected joker.",
					"{C:inactive}(Must have room)",
					"{s:0.8,C:inactive}\"I will {s:0.8,C:inactive,E:bd_glitching}paint! {s:0.8,C:inactive}Just like {s:0.8,C:inactive,E:bd_glitching}The Master!{s:0.8,C:inactive}\"",
				},
			},
			c_feli_fag_rit_trapper_mp = {
				name = "pperThe Tra",
				text = {
					"Enhance up to {C:attention}#1#{} selected cards",
					"to a random {C:dark_edition}Misprinted {C:feli_fag_ins_gld}Pelt Card",
				},
			},
		},
         Enhanced = {
            m_feli_fag_wild_t2_mp = {
                name = "ild CardW [II]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                    "{C:mult}+#1#{} Mult",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_wild_t3_mp = {
                name = "ild CardW [III]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                    "Retriggers {C:attention}#1#{} time",
                    "{C:mult}+#2#{} Mult",
                    "multiplied by {X:planet,C:white}X#3# ~ X#4#{}",
                },
            },
			m_feli_fag_wild_t4_mp = {
                name = "ild CardW [IV]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                    "Retriggers {C:attention}#1#{} times",
                    "{C:mult}+#2#{} Mult",
                    "multiplied by {X:planet,C:white}X#3# ~ X#4#{}",
                },
            },

			m_feli_fag_bonus_t2_mp = {
                name = "nus CardBo [II]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_bonus_t3_mp = {
                name = "nus CardBo [III]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_bonus_t4_mp = {
                name = "nus CardBo [IV]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
            m_feli_fag_glass_t2_mp = {
                name = "ass CardGl [II]",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                    "multiplied by {X:planet,C:white}X#4# ~ X#5#{}",
                },
            },
			m_feli_fag_glass_t3_mp = {
                name = "ass CardGl [III]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                    "multiplied by {X:planet,C:white}X#4# ~ X#5#{}",
                },
            },
			m_feli_fag_glass_t4_mp = {
                name = "ass CardGl [IV]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                    "multiplied by {X:planet,C:white}X#4# ~ X#5#{}",
                },
            },
            m_feli_fag_gold_t2_mp = {
                name = "old CardG [II]",
                text = {
					{
						"{C:money}$#1#{} if this",
						"card is held in hand",
						"at end of round",
					},
					{
						"Earn {C:money}$#2#{} when this",
						"card is played",
						"and scores",
                        "{s:0.8,C:inactive}(All multiplied by {s:0.8,X:planet,C:white}X#3# ~ X#4#{C:inactive,s:0.8})",
					}
				}
            },
			m_feli_fag_gold_t3_mp = {
                name = "old CardG [III]",
                text = {
					{
						"{C:money}$#1#{} if this",
						"card is held in hand",
						"at end of round",
					},
					{
						"Earn {C:money}$#2#{} when this",
						"card is played",
						"and scores",
                        "{s:0.8,C:inactive}(All multiplied by {s:0.8,X:planet,C:white}X#3# ~ X#4#{C:inactive,s:0.8})",
					}
				}
            },
			m_feli_fag_gold_t4_mp = {
                name = "old CardG [IV]",
                text = {
					{
						"{C:money}$#1#{} if this",
						"card is held in hand",
						"at end of round",
					},
					{
						"Earn {C:money}$#2#{} when this",
						"card is played",
						"and scores",
                        "{s:0.8,C:inactive}(All multiplied by {s:0.8,X:planet,C:white}X#3# ~ X#4#{C:inactive,s:0.8})",
					}
				}
            },
            m_feli_fag_lucky_t2_mp = {
                name = "cky CardLu [II]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                    "multiplied by {X:planet,C:white}X#10# ~ X#11#{}",
                },
            },
			m_feli_fag_lucky_t3_mp = {
                name = "cky CardLu [III]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                    "multiplied by {X:planet,C:white}X#10# ~ X#11#{}",
                },
            },
			m_feli_fag_lucky_t4_mp = {
                name = "cky CardLu [IV]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                    "multiplied by {X:planet,C:white}X#10# ~ X#11#{}",
                },
            },
            m_feli_fag_mult_t2_mp = {
                name = "ult CardM [II]",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_mult_t3_mp = {
                name = "ult CardM [III]",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_mult_t4_mp = {
                name = "ult CardM [IV]",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
            m_feli_fag_steel_t2_mp = {
                name = "eel CardSt [II]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "while this card",
                    "stays in hand",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_steel_t3_mp = {
                name = "eel CardSt [III]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult,",
                    "while this card",
                    "stays in hand",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_steel_t4_mp = {
                name = "eel CardSt [IV]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult,",
                    "while this card",
                    "stays in hand",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
            m_feli_fag_stone_t2_mp = {
                name = "tone CardS [II]",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "no rank or suit",
                    "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
                },
            },
			m_feli_fag_stone_t3_mp = {
                name = "tone CardS [III]",
                text = {
                    "{C:chips}+#1#{} Chips,",
					"{C:mult}+#2#{} Mult,",
                    "no rank or suit",
                    "{s:0.8,C:inactive}(All multiplied by {s:0.8,X:planet,C:white}X#3# ~ X#4#{C:inactive,s:0.8})",
                },
            },
			m_feli_fag_stone_t4_mp = {
                name = "tone CardS [IV]",
                text = {
                    "{C:chips}+#1#{} Chips,",
					"{C:mult}+#2#{} Mult,",
                    "no rank or suit",
                    "{s:0.8,C:inactive}(All multiplied by {s:0.8,X:planet,C:white}X#3# ~ X#4#{C:inactive,s:0.8})",
                },
            },
			m_feli_fag_enh_sup_mp = {
				name = "rior CardSupe",
				text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
                        "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X0.6{C:inactive,s:0.8} xChips)"
					},
				},
			
			},
			m_feli_fag_enh_sup_t2_mp = {
                name = "rior CardSupe [II]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
                        "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X0.7{C:inactive,s:0.8} Chips)"
					},
				},
            },
			m_feli_fag_enh_sup_t3_mp = {
                name = "rior CardSupe [III]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
                        "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X0.8{C:inactive,s:0.8} Chips)"
					},
				},
            },
			m_feli_fag_enh_sup_t4_mp = {
                name = "rior CardSupe [IV]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
                        "multiplied by {X:planet,C:white}X#2# ~ X#3#{}",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X1{C:inactive,s:0.8} Chips)"
					},
				},
            },
			

		},
        mistarot = {
			c_feli_fag_ascended_mp = {
                name = "ndedThe Asce",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
		},
		feli_fag_tier2_tarot_mp = {
			c_feli_fag_t2_ascended_mp = {
                name = "ndedThe Asce [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_chariot_mp = {
                name = "riot The Cha [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_devil_mp = {
                name = "vilThe De [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t2_empress_mp = {
                name = "pressThe Em [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t2_heirophant_mp = {
                name = "ophantThe Hier [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t2_lovers_mp = {
                name = "ersThe Lov [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t2_justice_mp = {
                name = "iceJust [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_tower_mp = {
                name = "erThe Tow [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_magician_mp = {
                name = "icianThe Mag [II]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
		feli_fag_tier3_tarot_mp = {
			c_feli_fag_t3_ascended_mp = {
                name = "ndedThe Asce [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_chariot_mp = {
                name = "riot The Cha [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_devil_mp = {
                name = "vilThe De [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t3_empress_mp = {
                name = "pressThe Em [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t3_heirophant_mp = {
                name = "ophantThe Hier [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t3_lovers_mp = {
                name = "ersThe Lov [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t3_justice_mp = {
                name = "iceJust [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_tower_mp = {
                name = "erThe Tow [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_magician_mp = {
                name = "icianThe Mag [III]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
		feli_fag_tier4_tarot_mp = {
			c_feli_fag_t4_ascended_mp = {
                name = "ndedThe Asce [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_chariot_mp = {
                name = "riot The Cha [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_devil_mp = {
                name = "vilThe De [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t4_empress_mp = {
                name = "pressThe Em [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t4_heirophant_mp = {
                name = "ophantThe Hier [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t4_lovers_mp = {
                name = "ersThe Lov [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t4_justice_mp = {
                name = "iceJust [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_tower_mp = {
                name = "erThe Tow [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_magician_mp = {
                name = "icianThe Mag [IV]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
    },
    misc = {
        dictionary = {
            b_feli_fag_tier2_tarot_mp_cards = "ot CardsTar [II]",
			b_feli_fag_tier3_tarot_mp_cards = "ot CardsTar [III]",
			b_feli_fag_tier4_tarot_mp_cards = "ot CardsTar [IV]",
            k_feli_fag_tier2_tarot_mp = "rotTa [II]",
			k_feli_fag_tier3_tarot_mp = "rotTa [III]",
			k_feli_fag_tier4_tarot_mp = "rotTa [IV]",
            b_feli_fag_ritual_mp_cards = "ual CardsRit",
            k_feli_fag_ritual_mp = "ualRit",
        },
        labels = {
            feli_fag_tier2_tarot_mp = "rotTa [II]",
			feli_fag_tier3_tarot_mp = "rotTa [III]",
			feli_fag_tier4_tarot_mp = "rotTa [IV]",
            feli_fag_ritual_mp = "ualRit",
        },
    }
}