return {
    descriptions = {
		Joker = {
            j_feli_fag_akyrs_lexicographer = {
                name = {
                    "The Lexicographer",
                    "{C:feli_fag_inactive,s:0.5}Wryn Nguyen"
                },
                text = { 
                    {
                    "Enables the {C:purple}Pronoun Palace",
                    "word dictionary"
                    },
                    {
                    "Once per ante, when used,",
                    "adds {C:attention}#1# {C:red,E:2}#2#{}",
                    "{C:feli_fag_pink}Wildcards{}",
                    "{s:0.4} {}",
                    "{C:inactive}(Uses left: {V:1}#3#{C:inactive})"
                    },

                }
            },

            j_feli_fag_akyrs_fisher = {
                name = {
                    "The Fisher",
                    "{C:feli_fag_inactive,s:0.5}Leslie Stone"
                },
                text = { 
                    {
                    "Enables the {C:purple}Pronoun Palace",
                    "word dictionary"
                    },
                    {
                    "Up to {C:attention}#1#{} times per ante,",
                    "when used, {C:attention}fish",
                    "for a random {C:enhanced}Enhanced",
                    "blank {C:blue}Letter card",
                    "{s:0.4} {}",
                    "{C:inactive}(Uses left: {V:1}#2#{C:inactive})"
                    },
                    {
                    "Card can be {C:feli_fag_ttm}Wooden{},",
                    "{C:feli_fag_pink}Crit{} or {C:red}Bleed"
                    },

                }
            },

            j_feli_fag_akyrs_accountant = {
                name = {
                    "The Accountant",
                    "{C:feli_fag_inactive,s:0.5}Augustine Anderson"
                },
                text = { 
                    {
                    "Enables the {C:purple}Pronoun Palace",
                    "word dictionary"
                    },
                    {
                    "Once per ante, when used,",
                    "adds {C:attention}#1# {C:red,E:2}#2#{}",
                    "{C:green,E:2}#3#{} {C:feli_fag_pink}Wildcard{}",
                    "{C:attention}N-gram{}",
                    "{s:0.4} {}",
                    "{C:inactive}(Uses left: {V:1}#4#{C:inactive})"
                    },

                }
            },
            j_feli_fag_akyrs_clerk = {
                name = {
                    "The Clerk",
                    "{C:feli_fag_inactive,s:0.5}Niko Tzortzina"
                },
                text = { 
                    {
                        "Enables the {C:purple}Pronoun Palace",
                        "word dictionary"
                    },
                    {
                        "Every {C:attention}hand{} played,",
                        "temporarily {C:tarot}upgrade{}",
                        "{C:feli_fag_pink}#2#s{} by {X:red,C:white}X#3#{} Mult",
                        "{C:inactive}(Currently {X:red,C:white}X#4#{C:inactive} Mult)"
                    },
                    {
                        "Once per round, when used,",
                        "randomly {C:enhanced}enhance {C:attention}#1#{} cards",
                        "to {C:feli_fag_pink}#2#s{} and reset the",
                        "{C:tarot}crit boost{} to {X:red,C:white}X0{} Mult",
                        "{s:0.4} {}",
                        "{C:inactive}(Uses left: {V:1}#5#{C:inactive})"
                    },

                }
            },
            j_feli_fag_akyrs_distributor = {
                name = {
                    "The Distributor",
                    "{C:feli_fag_inactive,s:0.5}Lizzel Laneda"
                },
                text = { 
                    {
                        "Enables the {C:purple}Pronoun Palace",
                        "word dictionary"
                    },
                    {
                        "{C:attention}Base{} and {C:feli_fag_ttm}Wooden Cards{}",
                        "get enhanced to",
                        "{C:enhanced}Semibreve Cards{}",
                        "when scored",
                    },
                    {
                        "{C:enhanced}Note Cards{} get upgraded",
                        "to their next {C:attention}tier{}",
                        "when scored",
                    },
                    {
                        "{C:enhanced}Crotchet Cards{} get enhanced",
                        "back to {C:feli_fag_ttm}Wooden Cards{}",
                        "when scored",
                    },

                }
            },
			j_feli_fag_ltr_dbl = {
                name = "Double Letter Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to retrigger",
                     "a scored card {C:attention}+#1#{} times",
                    "{s:0.7,C:inactive}(Caps at #2# sets of retriggers){}"
                }
            },
			j_feli_fag_ltr_tpl = {
                name = "Triple Letter Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to retrigger",
                    "a scored card {C:attention}+#1#{} times",
                    "{s:0.7,C:inactive}(Caps at #2# sets of retriggers){}"
                }
            },
			j_feli_fag_ltr_qdl = {
                name = "Quad Letter Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to retrigger",
                     "a scored card {C:attention}+#1#{} times",
                    "{s:0.7,C:inactive}(Caps at #2# sets of retriggers){}"
                }
            },
			j_feli_fag_ltr_dbw = {
                name = "Double Word Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to",
                    "Gain {X:chips,C:white}X#1#{} Chips and {X:mult,C:white}X#2#{} Mult",
                    "{s:0.7,C:inactive}(Hand needs to be 4 cards or more){}"
                }
            },
			j_feli_fag_ltr_tpw = {
                name = "Triple Word Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to",
                    "Gain {X:chips,C:white}X#1#{} Chips and {X:mult,C:white}X#2#{} Mult",
                    "{s:0.7,C:inactive}(Hand needs to be 6 cards or more){}"
                }
            },
			j_feli_fag_ltr_qdw = {
                name = "Quad Word Tile",
                text = { 
                    "{C:green}#3# in #4#{} chance to",
                    "Gain {X:chips,C:white}X#1#{} Chips and {X:mult,C:white}X#2#{} Mult",
                    "{s:0.7,C:inactive}(Hand needs to be 8 cards or more){}"
                }
            },
			j_feli_fag_ltr_cleanslate = {
                name = "Clean Slate",
                text = { 
                    "{C:chips}+#1#{} Chips and {C:money}$#2#{}",
                    "if the {C:attention}entire hand{} is",
					"{C:attention}played{} and {C:attention}scored"
                }
            },
			j_feli_fag_lgd_feli = {
				name = "{C:money,E:1,S:2}Feli{}",
				text = {
					{
					"{C:chips}+#1#{} Chips per scored card multiplied",
					"by the number of times",
					"the {C:attention}poker hand{} has been played",
					},
					{
					"If letters are enabled,",
					"{C:green}#2# in #3#{} chance to level up {C:attention}poker hand{}",
					"if {C:attention}word{} is related to {C:attention}Garfield{}",
					"{s:0.7,C:inactive}(The second self-insert of all time! ;)){}"
					}
				},
			},			
		},
        Other = {
			feli_fag_akyrs_wildcard	= {
				name = "Wildcard (Aikoyori's Shenanigans)",
				text= {
					"A {C:feli_fag_pink}Wildcard",
                    "is a {C:blue}letter{} that can be used",
                    "as {C:attention}any character"
				}
			},
            feli_fag_akyrs_ngrams	= {
				name = "n-grams (Aikoyori's Shenanigans)",
				text= {
					"An {C:attention}n-gram{} is a sequence",
                    "of 2, 3 or 4 {C:blue}letters{}",
                    "that can be used to form {C:attention}words",
				}
			},
        },
	},
}