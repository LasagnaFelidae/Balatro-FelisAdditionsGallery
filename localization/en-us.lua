return {
    descriptions = {
		Back={
            b_feli_fag_ttm_deck = {
                name = 'Totem Deck',
                text = 
                { 
                    'Start with {C:feli_fag_ttm}Totems{} enabled and',
					'{C:feli_fag_ins,T:v_feli_fag_totemmerchant}Totem Merchant{} redeemed.',
					"{C:inactive}(Only one totem can be active at a time)"
                },
            },
		},
		Sleeve = {
            sleeve_feli_fag_ttm_deck = {
                name = "Totem Sleeve",
                text = 
				{ 
                    'Start with {C:feli_fag_ttm}Totems{} enabled and',
					'{C:feli_fag_ins,T:v_feli_fag_totemmerchant}Totem Merchant{} redeemed',
					"{C:inactive}(Only one totem can be active at a time)"
                },
            },
            sleeve_feli_fag_ttm_deck_alt = {
                name = "Totem Sleeve",
                text = { 
                    "Start with",
                    "{C:white,X:feli_fag_ttm}+1{} Totem Area Size and",
					'{C:feli_fag_ins,T:v_feli_fag_totemtycoon}Totem Tycoon{} redeemed',
             	},
            },
			sleeve_feli_fag_ttm_deck_crv = {
                name = "Totem Sleeve",
                text = { 
                    "Start with {C:feli_fag_ttm}Totems{} enabled,",
                    "a {C:feli_fag_ttm,T:c_feli_fag_ttm_hd_crv_printer}Totem Head of the Printer{}",
					'and {C:feli_fag_ins,T:v_feli_fag_totemmerchant}Totem Merchant{} redeemed',
             	},
            },
		},
		
		Enhanced = {
			----------
			m_feli_fag_bld_pin = {
                name = "The Pin",
                text = {
                    {
						"{X:purple,C:white}Purple{}",
						"If {C:attention}scored hand{} is 4 blinds",
						"or more, {X:purple,C:white}X#1#{} Score"
					},
					{
						"Otherwise, {C:purple}+#2#{} Score",
						"and {C:red}Explodes"
					},
                },
            },
			-------------------
			---BLINDSIDE END---
			-------------------
			m_feli_fag_scoretest_t2 = {
                name = "scoretest",
                text = {
                    "Score: {C:chips}#1#{} (+#2#)",
					"Held Score: {C:chips}#3#{} (+#4#)",
					"xScore: {C:chips}#5#{} (+#6#)",
					"Held xScore: {C:chips}#7#{} (+#8#)",
					"BScore: {C:chips}#9#{} (+#10#)",
					"Held BScore: {C:chips}#11#{} (+#12#)",
					"xBScore: {C:chips}#13#{} (+#14#)",
					"Held xBScore: {C:chips}#15#{} (+#16#)",
					
                },
            },
            m_feli_fag_wild_t2 = {
                name = "Wild Card [II]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                },
            },
			m_feli_fag_wild_t3 = {
                name = "Wild Card [III]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                    "Retriggers {C:attention}#1#{} time",
                },
            },
			m_feli_fag_wild_t4 = {
                name = "Wild Card [IV]",
                text = {
                    "Can be used",
                    "as any suit",
                    "Can't be debuffed",
                    "Retriggers {C:attention}#1#{} times",
                },
            },

			m_feli_fag_bonus_t2 = {
                name = "Bonus Card [II]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                },
            },
			m_feli_fag_bonus_t3 = {
                name = "Bonus Card [III]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                },
            },
			m_feli_fag_bonus_t4 = {
                name = "Bonus Card [IV]",
                text = {
                    "{C:chips}+#1#{} extra chips",
                },
            },
            m_feli_fag_glass_t2 = {
                name = "Glass Card [II]",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                },
            },
			m_feli_fag_glass_t3 = {
                name = "Glass Card [III]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                },
            },
			m_feli_fag_glass_t4 = {
                name = "Glass Card [IV]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:green}#2# in #3#{} chance to",
                    "destroy card",
                },
            },
            m_feli_fag_gold_t2 = {
                name = "Gold Card [II]",
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
					}
				}
            },
			m_feli_fag_gold_t3 = {
                name = "Gold Card [III]",
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
					}
				}
            },
			m_feli_fag_gold_t4 = {
                name = "Gold Card [IV]",
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
					}
				}
            },
            m_feli_fag_lucky_t2 = {
                name = "Lucky Card [II]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                },
            },
			m_feli_fag_lucky_t3 = {
                name = "Lucky Card [III]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                },
            },
			m_feli_fag_lucky_t4 = {
                name = "Lucky Card [IV]",
                text = {
                    "{C:green}#1# in #4#{} chance",
                    "for {C:mult}+#3#{} Mult",
					"{C:green}#7# in #8#{} chance",
                    "for {C:chips}+#9#{} Chips",
                    "{C:green}#2# in #6#{} chance",
                    "to win {C:money}$#5#",
                },
            },
            m_feli_fag_mult_t2 = {
                name = "Mult Card [II]",
                text = {
                    "{C:mult}+#1#{} Mult",
                },
            },
			m_feli_fag_mult_t3 = {
                name = "Mult Card [III]",
                text = {
                    "{C:mult}+#1#{} Mult",
                },
            },
			m_feli_fag_mult_t4 = {
                name = "Mult Card [IV]",
                text = {
                    "{C:mult}+#1#{} Mult",
                },
            },
            m_feli_fag_steel_t2 = {
                name = "Steel Card [II]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "while this card",
                    "stays in hand",
                },
            },
			m_feli_fag_steel_t3 = {
                name = "Steel Card [III]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult,",
                    "while this card",
                    "stays in hand",
                },
            },
			m_feli_fag_steel_t4 = {
                name = "Steel Card [IV]",
                text = {
                    "{X:mult,C:white} X#1# {} Mult,",
                    "while this card",
                    "stays in hand",
                },
            },
            m_feli_fag_stone_t2 = {
                name = "Stone Card [II]",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "no rank or suit",
                },
            },
			m_feli_fag_stone_t3 = {
                name = "Stone Card [III]",
                text = {
                    "{C:chips}+#1#{} Chips,",
					"{C:mult}+#2#{} Mult,",
                    "no rank or suit",
                },
            },
			m_feli_fag_stone_t4 = {
                name = "Stone Card [IV]",
                text = {
                    "{C:chips}+#1#{} Chips,",
					"{C:mult}+#2#{} Mult,",
                    "no rank or suit",
                },
            },
			m_feli_fag_enh_sup = {
				name = "Superior Card",
				text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X1{C:inactive,s:0.8} xChips)"
					},
				},
			
			},
			m_feli_fag_enh_sup_t2 = {
                name = "Superior Card [II]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X1{C:inactive,s:0.8} Chips)"
					},
				},
            },
			m_feli_fag_enh_sup_t3 = {
                name = "Superior Card [III]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X1{C:inactive,s:0.8} Chips)"
					},
				},
            },
			m_feli_fag_enh_sup_t4 = {
                name = "Superior Card [IV]",
                text = {
					{
						"{X:chips,C:white}#1#%{} of {C:attention}card rank{} as xChips",
						"{C:inactive,s:0.8}(With a minimum of {X:chips,C:white,s:0.8}X1{C:inactive,s:0.8} Chips)"
					},
				},
            },
			

		},
		Edition = {
            e_feli_fag_subspace = {
                name = "Subspaced",
                text = {
                    "{X:blind,C:white}-#1#%{} Blind Size when Held",
                },
            },
		},
		Blind = {
			bl_feli_fag_ins_trader = {
				name = "The Trader",
				text = {
					"One random joker",
					"disabled every hand.",
					"Extremely large blind"
				},
			
			},
		
		
		},
		
        Joker = {
			j_feli_fag_joker = {
                name = "Feli's Placeholderia",
                text = {
                    "{C:red}+#1#{} Mult",
                },
            },
            j_feli_fag_lucky_feli = {
                name = "Lucky Feli",
                text = {
                    "{X:red,C:white}X#1#{} Mult for every {C:gold,f:feli_fag_m6x11plus-feli}1€",
                    "donated to my {C:planet}Ko-Fi{} page",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} for {C:gold,f:feli_fag_m6x11plus-feli}#3#€{C:inactive})"
                },
            },
            j_feli_fag_unlovable = {
                name = "Biting the Bolster",
                text = {
                    {
                    "{C:green}#1# in #2#{} chance to gift",
                    "you a {C:attention}randomly tiered",
                    "{C:tarot}#3#{}.",
                    },
                    {
                    "{C:green}#4# in #5#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.1}IRRECOVERABLE, UNLOVABLE, SACK OF SHIT.",
                    "{C:white,s:0.1}I CAN'T EVEN TAKE THE COURAGE OF DOING IT",
                    "{C:white,s:0.1}FEAR OWNS ME AS I WAIT FOR THE MOMENT",
                    "{C:white,s:0.1}WHERE YOU LEAVE ME TO DIE IN A FUCKING DITCH",
                    "{C:inactive,s:0.8}\'You clumsy fuck! You ruined it again!\'"
                    },
                },
            },
            j_feli_fag_desperatemeasures = {
                name = "Do Not Come Near",
                text = {
                    {
                    "Tiered {C:tarot}#2#'{} grant",
                    "{X:red,C:white}X#1#{} Mult",
                    "while held"
                    },
                    {
                    "{C:green}#3# in #4#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}YOU CRIED FOR NOTHING, AS ALWAYS.",
                    "{C:inactive,s:0.8}\'I need time to think\'"
                    },
                },
            },
            j_feli_fag_truereligion = {
                name = "True Religion",
                text = {
                    {
                        "{C:hearts}Hearts{} retrigger for every",
                        "Tiered {C:tarot}#2#{} held"
                    },
                    {
                    "{C:green}#3# in #4#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}FINALLY A PLACE WHERE I BELONG.",
                    "{C:inactive,s:0.8}\'Rotting.\'"
                    },
                },
            },
            j_feli_fag_productoffear = {
                name = "Product of Fear",
                text = {
                    {
                        "{C:hearts}Hearts{} can't be debuffed",
                        "as long as Tiered",
                        "{C:tarot}#1#'{} are held"
                    },
                    {
                    "{C:green}#2# in #3#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}I CAN'T FEEL ANYTHING, AND IT'S GREAT.",
                    "{C:inactive,s:0.8}\'Peace at last.\'"
                    },
                },
            },
            j_feli_fag_grazingonfear = {
                name = "Grazing on Fear",
                text = {
                    {
                        "{C:green}#2# in #3#{} chance to",
                        "set blind size to {C:blind}0{}",
                        "and {E:2,C:red}\'bypass Eternal\'{}",
                        "{C:white,s:0.4}The big jump.",
                        "{C:inactive,s:0.8}\'Deep in the water.\'"
                    },
                },
            },
            j_feli_fag_spearflowers = {
                name = "Spear Flowers",
                text = {
                    {
                        "Prevents {C:red}death{} with ",
                        "a departure gift of {C:gold}$#1#",
                        "as long as Tiered",
                        "{C:tarot}#2#'{} are held"
                    },
                    {
                    "{C:green}#3# in #4#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}BODY AND BLOOD...",
                    "{C:inactive,s:0.8}\'Blooming again.\'"
                    },
                },
            },
            j_feli_fag_redcap = {
                name = "Redcap",
                text = {
                    {
                    "Tiered {C:tarot}#3#'{} grant",
                    "{X:blind,C:white}X#1#{} Blind Size",
                    "and {X:red,C:white}-#2#{} Mult",
                    "while held"
                    },
                    {
                    "{C:green}#4# in #5#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}SADLY, I CAN'T CUT THROUGH THIS.",
                    "{C:inactive,s:0.8}\'Cut the pain away.\'"
                    },
                },
            },
            j_feli_fag_holeintheheart = {
                name = "Hole in the Heart",
                text = {
                    {
                        "Tiered {C:tarot}#3#'{} grant",
                        "{C:blue}6#1#{} Chips",
                        "and {C:red}-#2#{} Mult",
                        "when on hand"
                    },
                    {
                    "{C:green}#4# in #5#{} chance to",
                    "{E:2,C:red}\'bypass Eternal\'",
                    "{C:white,s:0.4}Felt like I was missing something important all along.",
                    "{C:inactive,s:0.8}\'No.\'"
                    },
                },
            },
            j_feli_fag_fleamarket = {
                name = {
                    "{s:0.8}Flea Market",
                    "Montgomery",
                    },
                text = {
                    {
                        "{C:attention}+#1#{} Shop Size",
                        "{C:attention}+#2#{} Extra {C:planet}Boosters",
                        "{C:attention}+#3#{} Extra {C:gold}Vouchers",
                        "{C:inactive,s:0.8}\'It's Just Like A Mini Mall!\'",
                    },
                },
            },
			j_feli_fag_lgd_jokerpp_a = {
                name = {
					"{C:gold,s:0.5}Ascended",
					"{C:gold}Joker++",
				},
                text = {
					{
                    "{C:red}+#1#{} Mult",
					},
					{
					"Increase Mult by {C:red}#2#{}",
					"if the {C:attention}scored hand{} isn't",
					"the most played {C:attention}poker hand"
					},
                },
            },
			j_feli_fag_rocket = {
                name = "Space Shuttle",
                text = {
                    "{C:red}+#1#{} Mult?",
                    "{C:inactive}(Blast off in: #3#)"
                },
            },
			j_feli_fag_rocket_a = {
                name = "Space Shuttle",
                text = {
					{
                    "{C:red}+#1#{} Mult",
					},
					{
					"Increase Mult by {C:red}#2#{}",
					"per {C:attention}hand{} that isn't",
					"the most played {C:attention}poker hand",
					"otherwise, the {C:attention}Joker{}",
					"{C:red}explodes{}",
					},
                },
            },
            j_feli_fag_plushtrap = {
                name = "plushtrap",
                text = {
					{
                    "{C:red}+#1#{} Mult",
					},
					{
					"current status : {C:attention}#2#{}",
					},
                },
            },
            j_feli_fag_mypenis = {
                name = "Testing sending text modifying through config",
                text = {
					{
                    "#1#",
                    "#2#"
					},

                },
            },
			
			
		-- LETTERJOKERS
		-- LETTERJOKERS
		-- LETTERJOKERS
			
			j_feli_fag_stock_exchange = {
			  name = {
			  "{C:diamonds}CATS{} Stock Exchange",
			  "{C:diamonds,s:0.6}(Central Asset Trading Syndicate){}"
			  },
			  text = { 
				{
				"LocalThunk Games, Inc.",
				"{B:1,C:white}#1# (#18##30#%){} | PRICE: {C:gold}$#3#{}, {X:diamonds,C:white}$#26#{} | {X:inactive,C:white}X#2#{}{X:gold,C:white}$#4#{}",
				},
				{
				"JimboCorp Industries, Limited",
				"{B:2,C:white}#5# (#19##31#%){} | PRICE: {C:gold}$#7#{}, {X:diamonds,C:white}$#27#{} | {X:inactive,C:white}X#6#{}{X:gold,C:white}$#8#{}",
				},
				{
				"Spectral Innovations, LLC",
				"{B:3,C:white}#9# (#20##32#%){} | PRICE: {C:gold}$#11#{}, {X:diamonds,C:white}$#28#{} | {X:inactive,C:white}X#10#{}{X:gold,C:white}$#12#{}",
				},
				{
				"Joker's Delicatessen International",
				"{B:4,C:white}#13# (#21##33#%){} | PRICE: {C:gold}$#15#{}, {X:diamonds,C:white}$#29#{} | {X:inactive,C:white}X#14#{}{X:gold,C:white}$#16#{}",
				},
				{
				"Bonus Trend Modifier: {C:green}+#22#",
				"{C:inactive,s:0.5}+#24# per \'Oops! All 6s\'{}",
				"Bonus Volatility Mod: {C:blue}+#23#",
				"{C:inactive,s:0.5}+#25# per Round{}"
				},

			  }
			},
        },
		Other = {
			feli_fag_explode	= {
				name = "Explode",
				text= {
					"Card is removed",
					"permanently from deck",
				}
			},
            feli_fag_tiered = {
                name = "Tiered Cards",
				text= {
					"{C:enhanced}Enhancements{}, {C:planet}consumables{}",
                    "and {C:attention}poker hands{} can have",
					"up to {C:gold}4 tiers{}",
				}
            },
			feli_fag_delete	= {
				name = "Delete",
				text= {
					"Card is removed",
					"permanently from deck",
				}
			},
            feli_fag_immutable = {
                name = "Immutable Chances",
				text= {
					"Listed {C:green}probabilities",
					"{C:red}cannot{} be modified",
				}
            },
			feli_fag_stock_legend	= {
				name = "Legend",
				text={
					"{X:dark_edition,C:white}STOCK_(CHANGE%){}",
					"{C:gold}$UNIT{}, {X:diamonds,C:white}$MODE{} {s:0.7}(x1, x5, x10 or all){}",
					"{X:inactive,C:white}OWNED_STOCK{} {X:gold,C:white}$TOTAL_VALUE{}"
				}
			},
			feli_fag_leshy_crossmod	= {
				name = "Revo's Vault Ability",
				text= {
						"{C:feli_fag_trb}Deathcards{} made using",
						"{C:feli_fag_ins}Jimbo's Photograph{}",
						"are included",
						"-",
						"Redeeming",
						"{C:feli_fag_ins}Jimbo's Photograph{}",
						"in this run grants",
						"an additional {X:mult,C:white}X2{} Mult",
				}
			},
            feli_fag_ghostcards_crossmod	= {
				name = "GhostCards Ability",
				text= {
						"A card is {C:feli_fag_pink}Haunted{}",
                        "if it has the {C:dark_edition}GhostCards",
                        "alternative texture"
				}
			},
            feli_fag_bd_nxkoo_crossmod	= {
				name = "BadDirector Ability",
				text= {
						"An additional {X:red,C:white}X1{} Mult",
                        "is granted if a joker is {C:attention}Misprint",
                        "or has the {C:dark_edition}Misprinted{} edition"
				}
			},
            feli_fag_phanta_crossmod	= {
				name = "Phanta Ability",
				text= {
						"{C:phanta_zodiac}Zodiacs{} count as {C:tarot}Tarots"
				}
			},
            feli_fag_washmashine_crossmod	= {
				name = "Washmachine. Ability",
				text= {
						"{C:attention}Flash Cards{} give an",
                        "additional {X:mult,C:white}X1.5{} Mult"
				}
			},
            feli_fag_morefluff_crossmod	= {
				name = "MoreFluff Ability",
				text= {
						"When playing a {C:attention}Three of a Kind{},",
                        "get a {C:colourcard}Colour{} card",
                        "{C:inactive}(Must have room)"
				}
			},
            feli_fag_zeroerror_crossmod	= {
				name = "0 ERROR Ability",
				text= {
						"{C:common}Brights{} count as",
                        "{C:enhanced}Wild Cards",
				}
			},
			feli_fag_bld_explode	= {
				name = "Explode",
				text= {
					"Blind is removed",
					"permanently from deck",
				}
			},
			
			p_feli_fag_tribe = {
                name = "Tribe Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:feljio_trb} Tribe{} cards to",
                    "be used immediately",
                },
            },
			
			
		
			---- SIGILS
			feli_fag_sgl_bifurcated = {
				name = "Bifurcated Strike",
				text = {"Retrigger card once"},
			},

			feli_fag_sgl_trifurcated = {
				name = "Trifurcated Strike",
				text = {"Retrigger card twice"},
			},

			feli_fag_sgl_brittle = {
				name = "Brittle",
				text = {"Breaks after being triggered or played"},
			},
			
			feli_fag_sgl_tail = {
				name = "Loose Tail",
				text = {
					"When destroyed, clones itself",
					"and creates a tail",
					"{C:inactive}(Effect triggers once){}",
				},
			},

			-- Visual
			feli_fag_stk_stitched = {
				name = "Stitched Card",
				text = {
				"The card has been brutally stitched",
				"together by {C:clubs,E:1}The Mycologists{}."
				},
			},
            feli_fag_stk_glitched = {
				name = "Glitched Card",
				text = {
				"This joker randomly changes itself",
                "after every hand",
				},
			},

			-- Roblox
			feli_fag_stk_subspace = {
				name = "Subspaced Card",
				text = {
				"The card has been tinted",
				"{C:clubs,E:feli_fag_pink}pink{} by {C:clubs,E:feli_fag_pink}Subspace Tripmine{}.",
				"{C:chips}+100{} chips when held."
				},
			},
			feli_fag_copied = {
				name = "Copied Card",
				text = {
				"Disappears at the end of the round."
				},
			},
			-- Other Stickers
			feli_fag_stk_blunder = {
				name = "Blunder",
				text = {
				"{X:blind,C:white}X#1#{} Blind Req.",
				"{C:mult}#2#{} Mult",
				},
			},
			feli_fag_stk_goobert = {
				name = "Painted",
				text = {
				"{X:feli_fag_goobert,C:white}X#1#{} to all card values.",
				"{s:0.8,C:inactive}(Value is a random number",
				"{s:0.8,C:inactive}between 0.9 and 2.5)"
				},
			},
		},
		Tarot = {
			c_feli_fag_ascended = {
                name = "The Ascended",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
		},
		feli_fag_tier2_tarot = {
			c_feli_fag_t2_ascended = {
                name = "The Ascended [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_chariot = {
                name = "The Chariot [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_devil = {
                name = "The Devil [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t2_empress = {
                name = "The Empress [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t2_heirophant = {
                name = "The Hierophant [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t2_lovers = {
                name = "The Lovers [II]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t2_justice = {
                name = "Justice [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_tower = {
                name = "The Tower [II]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t2_magician = {
                name = "The Magician [II]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
		feli_fag_tier3_tarot = {
			c_feli_fag_t3_ascended = {
                name = "The Ascended [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_chariot = {
                name = "The Chariot [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_devil = {
                name = "The Devil [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t3_empress = {
                name = "The Empress [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t3_heirophant = {
                name = "The Hierophant [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t3_lovers = {
                name = "The Lovers [III]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t3_justice = {
                name = "Justice [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_tower = {
                name = "The Tower [III]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t3_magician = {
                name = "The Magician [III]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
		feli_fag_tier4_tarot = {
			c_feli_fag_t4_ascended = {
                name = "The Ascended [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_chariot = {
                name = "The Chariot [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_devil = {
                name = "The Devil [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
            c_feli_fag_t4_empress = {
                name = "The Empress [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t4_heirophant = {
                name = "The Hierophant [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
            c_feli_fag_t4_lovers = {
                name = "The Lovers [IV]",
                text = {
                    "Enhances {C:attention}#1#",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
			c_feli_fag_t4_justice = {
                name = "Justice [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_tower = {
                name = "The Tower [IV]",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
			c_feli_fag_t4_magician = {
                name = "The Magician [IV]",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                },
            },
		},
		
		feli_fag_tribe = {
			c_feli_fag_trb_feline = {
				name = "Feline",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Feline{} card"
				},
			},
			c_feli_fag_trb_canine = {
				name = "Canine",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Canine{} card"
				},
			},
			c_feli_fag_trb_hooved = {
				name = "Hooved",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Hooved{} card"
				},
			},
			c_feli_fag_trb_human = {
				name = "Human",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Human{} card"
				},
			},
			c_feli_fag_trb_reptile = {
				name = "Reptile",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Reptile{} card"
				},
			},
			c_feli_fag_trb_avian = {
				name = "Avian",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Avian{} card"
				},
			},
			c_feli_fag_trb_insect = {
				name = "Insect",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Insect{} card"
				},
			},
			c_feli_fag_trb_vermin = {
				name = "Vermin",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Vermin{} card"
				},
			},
			c_feli_fag_trb_object = {
				name = "Object",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Object{} card"
				},
			},
			c_feli_fag_trb_other = {
				name = "Other",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Other{} card"
				},
			},
			c_feli_fag_trb_crv_banana = {
				name = "Banana",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Banana{} card"
				},
			},
			c_feli_fag_trb_crv_printer = {
				name = "Printer",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Printer{} card"
				},
			},
            c_feli_fag_trb_bd_misprint = {
				name = "Misprint",
				text = {
					"Get {C:attention}1{} random",
					"{C:feli_fag_trb}Misprint{} card"
				},
			},
		},

		feli_fag_tier2_planet = {
            c_feli_fag_tier2_pluto = {
                name = "Pluto [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
            c_feli_fag_tier2_mercury = {
                name = "Mercury [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_uranus = {
                name = "Uranus [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_venus = {
                name = "Venus [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_saturn = {
                name = "Saturn [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_jupiter = {
                name = "Jupiter [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_earth = {
                name = "Earth [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_mars = {
                name = "Mars [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_neptune = {
                name = "Neptune [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_planetx = {
                name = "Planet X [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_eris = {
                name = "Eris [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier2_ceres = {
                name = "Ceres [II]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
        },
		feli_fag_tier3_planet = {
			c_feli_fag_tier3_pluto = {
                name = "Pluto [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
            c_feli_fag_tier3_mercury = {
                name = "Mercury [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_uranus = {
                name = "Uranus [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_venus = {
                name = "Venus [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_saturn = {
                name = "Saturn [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_jupiter = {
                name = "Jupiter [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_earth = {
                name = "Earth [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_mars = {
                name = "Mars [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_neptune = {
                name = "Neptune [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_planetx = {
                name = "Planet X [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_eris = {
                name = "Eris [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier3_ceres = {
                name = "Ceres [III]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
        },
		feli_fag_tier4_planet = {
            c_feli_fag_tier4_pluto = {
                name = "Pluto [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
            c_feli_fag_tier4_mercury = {
                name = "Mercury [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_uranus = {
                name = "Uranus [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_venus = {
                name = "Venus [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_saturn = {
                name = "Saturn [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_jupiter = {
                name = "Jupiter [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_earth = {
                name = "Earth [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_mars = {
                name = "Mars [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_neptune = {
                name = "Neptune [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_planetx = {
                name = "Planet X [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_eris = {
                name = "Eris [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
			c_feli_fag_tier4_ceres = {
                name = "Ceres [IV]",
                text = {
                    "({V:1}lvl.#1#{}/{V:2}#2#{}) Level up",
                    "{C:attention}#3#",
                    "{C:mult}+#4#{}/{C:mult}#6#{} Mult and",
                    "{C:chips}+#5#{}/{C:chips}#7#{} Chips",
                },
            },
        },
		

        --Partner = {
        --    pnr_feli_fag_aikoyori = {
        --        
        --        name = "smol Aiko",
        --        text = {
        --            "Retrigger {C:attention}every{} card {C:attention}#1#{} times",
        --        },
        --        unlock={
        --            "Used {C:attention}Aikoyori",
        --            "to win on {C:attention}Gold",
        --            "{C:attention}Stake{} difficulty",
        --        },
        --    }
        --},
    },
    misc = {
		challenge_names = {
			c_feli_fag_ins_mycologist_1 = "The Mycologists' Challenge",
			c_feli_fag_stock_1 = "Portfolio",
			c_feli_fag_stock_2 = "Insider Trading",
			c_feli_fag_medusa_1 = "Medusa II",
		},
        achievement_names={
            ach_feli_fag_j_o_permit = "J/O Permit",
            ach_feli_fag_red_letter = "Red Letter",
            ach_feli_fag_corkline = "Corkline",
        },
        achievement_descriptions={
            ach_feli_fag_j_o_permit = {"Spell a slur of your choice", "(Pronoun Palace dictionary must be enabled)"},
            ach_feli_fag_red_letter = {"Win a run with The Lexicographer", "(Letters must be enabled)"},
            ach_feli_fag_corkline = {"Win a run with The Fisher", "(Letters must be enabled)"},
        },
		dictionary={
            --------------
            ---CONFIG-----
            --------------
            cfg_feli_fag_directors_cut = "Director\'s Cut",
            cfg_feli_fag_directors_cut_desc = "View the mod as Feli intended. [TW: SH, Gore, Blood]",
            --------------
            ---QUESTS-----
            --------------
            k_quest1_line1 = "LOADSAMONEY!!!",
			k_quest1_line2 = "Level up! {C:red}color!!!",
            --------------
			k_feli_fag_cash_succ = "LOADSAMONEY!!!",
			k_feli_fag_lvl_succ = "Level up!",
			k_feli_fag_nope_succ = "Nope!",
			k_feli_fag_lowered_succ = "Lowered!",
			k_feli_fag_cloned = "Cloned!",
			k_feli_fag_pelt = "Pelt Card",
			k_feli_fag_olddata = "OLD_DATA",
			k_feli_fag_terrain = "Terrain Card",
			----------------
			---MOD BADGES---
			----------------
			---
			--If i were you, i wouldn't try to copy this way of handling crossmod badges.

			k_feli_fag_revo = "Revo's Vault",
			k_feli_fag_toga = "TOGA's Stuff",
			k_feli_fag_bs = "Blindside",
			k_feli_fag_synthb = "SynthB",
            k_feli_fag_bd = "Bad Director",
            k_feli_fag_ghostcards = "GhostCards",
            k_feli_fag_phanta = "Phanta",
            k_feli_fag_aikoshen = "Aikoyori's Shenanigans",
			----------------
			--J.CATEGORIES--
			----------------
			k_feli_fag_ins = "Inscryption",
			k_feli_fag_rbx = "ROBLOX",
            k_feli_fag_toga_malware = "Malware",
            k_feli_fag_bnb = "Hole in the Heart",
            k_feli_fag_garfield = "Garfield",
            k_feli_fag_pronounpalace = "Pronoun Palace",
			----------------
			----------------
			k_feli_fag_loic1 = "Charging...",
			k_feli_fag_loic2 = "Ready!",
			k_feli_fag_loic3 = "Beamed!",
			k_feli_fag_loic4 = "Cooling down...",
			k_feli_fag_loic5 = "Cooled down!",
			----------------
			--CONSUMEABLES--
			----------------
			b_feli_fag_totem_parts_cards = "Totem Parts",
			b_feli_fag_tribe_cards = "Tribe Cards",
			k_feli_fag_tribe = "Tribe Card",
			k_feli_fag_totem_parts = "Totem Part",
			
			b_feli_fag_tier2_tarot_cards = "Tarot Cards [II]",
			b_feli_fag_tier3_tarot_cards = "Tarot Cards [III]",
			b_feli_fag_tier4_tarot_cards = "Tarot Cards [IV]",
			b_feli_fag_tier2_planet_cards = "Planet Cards [II]",
			b_feli_fag_tier3_planet_cards = "Planet Cards [III]",
			b_feli_fag_tier4_planet_cards = "Planet Cards [IV]",
			k_feli_fag_tier2_tarot = "Tarot [II]",
			k_feli_fag_tier3_tarot = "Tarot [III]",
			k_feli_fag_tier4_tarot = "Tarot [IV]",
			k_feli_fag_tier2_planet = "Planet [II]",
			k_feli_fag_tier3_planet = "Planet [III]",
			k_feli_fag_tier4_planet = "Planet [IV]",
			---
			k_feli_fag_combine_button = "COMBINE",
			k_feli_fag_separate_button = "SEPARATE",
			k_feli_fag_switch_button = "SWITCH",
			k_feli_fag_tribe_pack = "Tribe Pack",
			
			k_feli_fag_ttm_box = "Totem Box",
			feli_fag_toggle_to_totems = "Show Totems",
			feli_fag_toggle_to_jokers = "Show Jokers",
			--------------
			---PKR HANDS--
			--------------

			k_feli_fag_pair_t2_below = "Pair / Pair [II]",
			k_feli_fag_pair_t3_below = "Pair / Pair [II - III]",
			k_feli_fag_pair_t4_below = "Pair / Pair [II - IV]",

			k_feli_fag_3oak_t2_below = "Three of a Kind / Three of a Kind [II]",
			k_feli_fag_3oak_t3_below = "Three of a Kind / Three of a Kind [II - III]",
			k_feli_fag_3oak_t4_below = "Three of a Kind / Three of a Kind [II - IV]",

			k_feli_fag_house_t2_below = "Full House / Full House [II]",
			k_feli_fag_house_t3_below = "Full House / Full House [II - III]",
			k_feli_fag_house_t4_below = "Full House / Full House [II - IV]",

			k_feli_fag_4oak_t2_below = "Four of a Kind / Four of a Kind [II]",
			k_feli_fag_4oak_t3_below = "Four of a Kind / Four of a Kind [II - III]",
			k_feli_fag_4oak_t4_below = "Four of a Kind / Four of a Kind [II - IV]",

			k_feli_fag_flush_t2_below = "Flush / Flush [II]",
			k_feli_fag_flush_t3_below = "Flush / Flush [II - III]",
			k_feli_fag_flush_t4_below = "Flush / Flush [II - IV]",

			k_feli_fag_straight_t2_below = "Straight / Straight [II]",
			k_feli_fag_straight_t3_below = "Straight / Straight [II - III]",
			k_feli_fag_straight_t4_below = "Straight / Straight [II - IV]",

			k_feli_fag_two_pair_t2_below = "Two Pair / Two Pair [II]",
			k_feli_fag_two_pair_t3_below = "Two Pair / Two Pair [II - III]",
			k_feli_fag_two_pair_t4_below = "Two Pair / Two Pair [II - IV]",

			k_feli_fag_straight_flush_t2_below = "Straight Flush / Straight Flush [II]",
			k_feli_fag_straight_flush_t3_below = "Straight Flush / Straight Flush [II - III]",
			k_feli_fag_straight_flush_t4_below = "Straight Flush / Straight Flush [II - IV]",

			k_feli_fag_highcard_t2_below = "High Card / High Card [II]",
			k_feli_fag_highcard_t3_below = "High Card / High Card [II - III]",
			k_feli_fag_highcard_t4_below = "High Card / High Card [II - IV]",

			k_feli_fag_5oak_t2_below = "Five of a Kind / Five of a Kind [II]",
			k_feli_fag_5oak_t3_below = "Five of a Kind / Five of a Kind [II - III]",
			k_feli_fag_5oak_t4_below = "Five of a Kind / Five of a Kind [II - IV]",

			k_feli_fag_flushhouse_t2_below = "Flush House / Flush House [II]",
			k_feli_fag_flushhouse_t3_below = "Flush House / Flush House [II - III]",
			k_feli_fag_flushhouse_t4_below = "Flush House / Flush House [II - IV]",

			k_feli_fag_flushfive_t2_below = "Flush Five / Flush Five [II]",
			k_feli_fag_flushfive_t3_below = "Flush Five / Flush Five [II - III]",
			k_feli_fag_flushfive_t4_below = "Flush Five / Flush Five [II - IV]",

			
		},
		labels = {
			------------
			---SIGILS---
			------------
			feli_fag_sgl_bifurcated = "Bifurcated Strike",
			feli_fag_sgl_trifurcated = "Trifurcated Strike",
			feli_fag_sgl_brittle = "Brittle",
			feli_fag_sgl_tail = "Loose Tail",
			------------
			---TTMSIG---
			------------
			feli_fag_ttm_sgl_undying = "Undying",
			feli_fag_ttm_sgl_bifurcated = "Bifurcated Strike",
			feli_fag_ttm_sgl_swap = "Swapper",
			feli_fag_ttm_sgl_midas = "Midas Touch",
			feli_fag_ttm_sgl_cardbearer = "Card Bearer",
			feli_fag_ttm_sgl_giftbearer = "Gift Bearer",
			feli_fag_ttm_sgl_stinky = "Stinky",
			feli_fag_ttm_sgl_repulsive = "Repulsive",
			feli_fag_ttm_sgl_omnistrike = "Omni Strike",
			feli_fag_ttm_sgl_leader = "Leader",
			-------------
			---STICKER---
			-------------
			feli_fag_stk_stitched = "Stitched Card",
			feli_fag_subspace = "Subspaced",
			feli_fag_stk_blunder = "Blunder",
			feli_fag_stk_goobert = "Painted",
            feli_fag_stk_glitched = "Glitched Card",
			-------------
			-------------
			feli_fag_plt_gold = "Gold Pelt",
			feli_fag_plt_wlf = "Wolf Pelt",
			feli_fag_plt_bny = "Bunny Pelt",
			feli_fag_plt_olddata = "OLD_DATA",
			feli_fag_trn_goldn = "Gold Nugget",
			feli_fag_enh_sup = "Superior",
			feli_fag_totem_parts = "Totem Part",
			feli_fag_tier2_tarot = "Tarot [II]",
			feli_fag_tier3_tarot = "Tarot [III]",
			feli_fag_tier4_tarot = "Tarot [IV]",
			feli_fag_tier2_planet = "Planet [II]",
			feli_fag_tier3_planet = "Planet [III]",
			feli_fag_tier4_planet = "Planet [IV]",
			
		},
		poker_hand_descriptions = {
			["feli_fag_tier2_highcard"] = {
                "If the played hand is not any of the above",
                "hands, only the highest ranked card with",
				"a Tier 2 enhancement scores",
            },
            ["feli_fag_tier2_5oak"] = {
                "5 cards with the same rank",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_flush"] = {
                "5 cards that share the same suit",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_flushfive"] = {
                "5 cards with the same rank and suit",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_flushhouse"] = {
                "A Three of a Kind and a Pair with",
                "all cards sharing the same suit",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_4oak"] = {
                "4 cards with the same rank. They may",
                "be played with 1 other unscored card",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_house"] = {
                "A Three of a Kind and a Pair",
                "having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_pair"] = {
                "2 cards that share the same rank. They may",
                "be played with up to 3 other unscored cards",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_royal"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_straight"] = {
                "5 cards in a row (consecutive ranks)",
				"with Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_straight_flush"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_3oak"] = {
                "3 cards with the same rank. They may be",
                "played with up to 2 other unscored cards",
				"and having Tier 2 enhancements",
                "or higher",
            },
            ["feli_fag_tier2_two_pair"] = {
                "2 pairs of cards with different ranks, may",
                "be played with 1 other unscored card",
				"and having Tier 2 enhancements",
                "or higher",
            },
			["feli_fag_tier3_highcard"] = {
                "If the played hand is not any of the above",
                "hands, only the highest ranked card with",
				"a Tier 3 enhancement scores",
            },
			["feli_fag_tier3_5oak"] = {
                "5 cards with the same rank",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_flush"] = {
                "5 cards that share the same suit",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_flushfive"] = {
                "5 cards with the same rank and suit",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_flushhouse"] = {
                "A Three of a Kind and a Pair with",
                "all cards sharing the same suit",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_4oak"] = {
                "4 cards with the same rank. They may",
                "be played with 1 other unscored card",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_house"] = {
                "A Three of a Kind and a Pair",
                "having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_pair"] = {
                "2 cards that share the same rank. They may",
                "be played with up to 3 other unscored cards",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_royal"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_straight"] = {
                "5 cards in a row (consecutive ranks)",
				"with Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_straight_flush"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_3oak"] = {
                "3 cards with the same rank. They may be",
                "played with up to 2 other unscored cards",
				"and having Tier 3 enhancements",
                "or higher",
            },
            ["feli_fag_tier3_two_pair"] = {
                "2 pairs of cards with different ranks, may",
                "be played with 1 other unscored card",
				"and having Tier 3 enhancements",
                "or higher",
            },

			["feli_fag_tier4_highcard"] = {
                "If the played hand is not any of the above",
                "hands, only the highest ranked card with",
				"a Tier 4 enhancement scores",
            },

			["feli_fag_tier4_5oak"] = {
                "5 cards with the same rank",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_flush"] = {
                "5 cards that share the same suit",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_flushfive"] = {
                "5 cards with the same rank and suit",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_flushhouse"] = {
                "A Three of a Kind and a Pair with",
                "all cards sharing the same suit",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_4oak"] = {
                "4 cards with the same rank. They may",
                "be played with 1 other unscored card",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_house"] = {
                "A Three of a Kind and a Pair",
                "having Tier 4 enhancements",

            },
            ["feli_fag_tier4_pair"] = {
                "2 cards that share the same rank. They may",
                "be played with up to 3 other unscored cards",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_royal"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_straight"] = {
                "5 cards in a row (consecutive ranks)",
				"with Tier 4 enhancements",
            },
            ["feli_fag_tier4_straight_flush"] = {
                "5 cards in a row (consecutive ranks) with",
                "all cards sharing the same suit",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_3oak"] = {
                "3 cards with the same rank. They may be",
                "played with up to 2 other unscored cards",
				"and having Tier 4 enhancements",
            },
            ["feli_fag_tier4_two_pair"] = {
                "2 pairs of cards with different ranks, may",
                "be played with 1 other unscored card",
				"and having Tier 4 enhancements",
            },
        },
        poker_hands = {
			["feli_fag_tier2_highcard"] = "High Card [II]",
            ["feli_fag_tier2_5oak"] = "Five of a Kind [II]",
            ["feli_fag_tier2_flush"] = "Flush [II]",
            ["feli_fag_tier2_flushfive"] = "Flush Five [II]",
            ["feli_fag_tier2_flushhouse"] = "Flush House [II]",
            ["feli_fag_tier2_4oak"] = "Four of a Kind [II]",
            ["feli_fag_tier2_house"] = "Full House [II]",
            ["feli_fag_tier2_pair"] = "Pair [II]",
            ["feli_fag_tier2_royal"] = "Royal Flush [II]",
            ["feli_fag_tier2_straight"] = "Straight [II]",
            ["feli_fag_tier2_straight_flush"] = "Straight Flush [II]",
            ["feli_fag_tier2_3oak"] = "Three of a Kind [II]",
            ["feli_fag_tier2_two_pair"] = "Two Pair [II]",

			["feli_fag_tier3_highcard"] = "High Card [III]",
			["feli_fag_tier3_5oak"] = "Five of a Kind [III]",
            ["feli_fag_tier3_flush"] = "Flush [III]",
            ["feli_fag_tier3_flushfive"] = "Flush Five [III]",
            ["feli_fag_tier3_flushhouse"] = "Flush House [III]",
            ["feli_fag_tier3_4oak"] = "Four of a Kind [III]",
            ["feli_fag_tier3_house"] = "Full House [III]",
            ["feli_fag_tier3_pair"] = "Pair [III]",
            ["feli_fag_tier3_royal"] = "Royal Flush [III]",
            ["feli_fag_tier3_straight"] = "Straight [III]",
            ["feli_fag_tier3_straight_flush"] = "Straight Flush [III]",
            ["feli_fag_tier3_3oak"] = "Three of a Kind [III]",
            ["feli_fag_tier3_two_pair"] = "Two Pair [III]",

			["feli_fag_tier4_highcard"] = "High Card [IV]",
			["feli_fag_tier4_5oak"] = "Five of a Kind [IV]",
            ["feli_fag_tier4_flush"] = "Flush [IV]",
            ["feli_fag_tier4_flushfive"] = "Flush Five [IV]",
            ["feli_fag_tier4_flushhouse"] = "Flush House [IV]",
            ["feli_fag_tier4_4oak"] = "Four of a Kind [IV]",
            ["feli_fag_tier4_house"] = "Full House [IV]",
            ["feli_fag_tier4_pair"] = "Pair [IV]",
            ["feli_fag_tier4_royal"] = "Royal Flush [IV]",
            ["feli_fag_tier4_straight"] = "Straight [IV]",
            ["feli_fag_tier4_straight_flush"] = "Straight Flush [IV]",
            ["feli_fag_tier4_3oak"] = "Three of a Kind [IV]",
            ["feli_fag_tier4_two_pair"] = "Two Pair [IV]",
        },
    },
}