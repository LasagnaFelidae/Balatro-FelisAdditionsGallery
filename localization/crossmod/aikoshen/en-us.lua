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
                    "Blank Card",
                    "{s:0.4} {}",
                    "{C:inactive}(Uses left: {V:1}#2#{C:inactive})"
                    },
                    {
                    "Card can be {C:feli_fag_ttm}Wooden{},",
                    "{C:feli_fag_inactive}Plastic{}, {C:feli_fag_institutional_black}Bomb",
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
            j_feli_fag_akyrs_mycologists = {
                name = {
                    "The Mycologists",
                    "{C:feli_fag_inactive,s:0.5}Josef & Pilz Karnoffel"
                },
                text = { 
                    {
                        "Enables the {C:purple}Pronoun Palace",
                        "word dictionary"
                    },
                    {
                        "Once per round, if the",
                        "{C:blue}letters{} are {C:dark_edition}identical{},",
                        "{C:attention}stitch{} two cards into a",
                        "Blank {C:feli_fag_pink}Crit Card{} {C:attention}Bi-gram{}",
                    },

                }
            },
            j_feli_fag_akyrs_paradigm = {
                name = {
                    "Paradigm",
                    "{C:feli_fag_inactive,s:0.5}Rubicon \"Poppy\" Makara"
                },
                text = { 
                    {
                        "Enables the {C:purple}Pronoun Palace",
                        "word dictionary"
                    },
                    {
                        "When entering a Blind,",
                        "{X:blind,C:white}X#1#{} Blind Req. and",
                        "adds {C:attention}#2# {C:red}#3#{}",
                        "{C:feli_fag_institutional_black,E:2}#4#{} {C:attention}Suffixes{}",
                        "{s:0.4} {}",
                        "{C:inactive}(Blind reduction scales with Ante)",
                    },

                }
            },
            j_feli_fag_akyrs_public_broadcast = {
                name = {
                    "Public Broadcast",
                    "{C:feli_fag_inactive,s:0.5}Elmer"
                },
                text = { 
                    {
                        "Enables the {C:purple}Pronoun Palace",
                        "word dictionary and sets",
                        "{C:blue}play{}/{C:red}discard{} limit to {C:attention}#1#"
                    },
                    {
                        "Retrigger cards {C:attention}n{} times",
                        "based on {C:attention}hand position",
                        "and the {C:dark_edition}sequence{} below:",
                        "{s:0.2} ",
                        "{f:feli_fag_tile}0{V:1,f:feli_fag_tile}#2#{V:2,f:feli_fag_tile}#3#{V:3,f:feli_fag_tile}#4#{V:4,f:feli_fag_tile}#5#{V:5,f:feli_fag_tile}#6#{V:6,f:feli_fag_tile}#7#{V:7,f:feli_fag_tile}#8#",
                        "{s:0.2} ",
                        "{C:inactive,s:0.7}(Sequence changes every hand played)"
                    },

                }
            },
			j_feli_fag_akyrs_mba = {
                name = "MBA",
                text = {
                    { 
                        "Gain {C:blue}+#1#{} Chips whenever",
                        "a {C:attention}#2#{} is played",
                        "{C:inactive}(Currently {C:blue}+#4#{C:inactive} Chips)",
                    },
                    {
                        "Once per round, whenever",
                        "a {C:attention}#2#{} is played",
                        "get {C:blue}+#3#{} hand",
                    },
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
            feli_fag_akyrs_fixes = {
                name = "n-fixes (Aikoyori's Shenanigans)",
				text= {
					"A {C:attention}n-fix{} is a sequence",
                    "of 2, 3 or 4 {C:blue}letters{}",
                    "that is pinned to the",
                    "leftmost or rightmost spot"

				}
            },
        },
	},
}