return {
    descriptions = {
        Enhanced = {
            m_feli_fag_pp_bleed = {
                name = "Bleed Card",
                text = {
                    {
                    "{C:red}+#2#{} Mult",
                    "when scored"
                    },
                    {
                    "{X:purple,C:white}X#1#{} Score",
                    "while the card is",
                    "held in hand"
                    },
                },
            },
            m_feli_fag_pp_bomb = {
                name = "Bomb Card",
                text = {
                    {
                    "{C:red}Explode{} after",
                    "playing {C:attention}#3#{} #4#"
                    },
                    {
                    "{X:blindsize,C:white}X#2#{} Blind Req.",
                    "if it {C:red}explodes{}",
                    "after scoring"
                    },
                    {
                    "{X:purple,C:white}X#1#{} Score",
                    "if it {C:red}explodes{}",
                    "while held in hand"
                    },
                },
            },
            m_feli_fag_pp_crit = {
                name = "Crit Card",
                text = {
                    {
                    "{X:mult,C:white}X#1#{} Mult",
                    "when scored"
                    },
                },
            },
            m_feli_fag_pp_money = {
                name = "Money Card",
                text = {
                    {
                    "No tile value",
                    "{C:gold}$#1#{} if this",
                    "card is held in hand",
                    "at end of the round"
                    },
                },
            },
            m_feli_fag_pp_wood = {
                name = "Wooden Card",
                text = {
                    {
                    "{C:red}+#1#{} Mult",
                    "when scored"
                    },
                },
            },

        },
        feli_fag_clearances = {
            clearance_feli_fag_beige = {
                name = "Beige Clearance",
                text = {
                    "Base difficulty"
                },
                unlock = {
                    "This is unlocked by default :sob:"
                }
            },
            clearance_feli_fag_black = {
                name = "Black Clearance",
                text = {
                    {
                    "{X:blind,C:white}X#1#{} Blind Req."
                    },
                    {
                    "Applies {C:attention}Beige Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Beige Clearance",
                }
            },
            clearance_feli_fag_purple = {
                name = "Purple Clearance",
                text = {
                    {
                        "{C:attention}Pronoun Palace{} Jokers'",
                        "abilities can {C:red}backfire",
                    },
                    {
                        "Applies {C:attention}Black Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Black Clearance",
                }
            },
            clearance_feli_fag_blue = {
                name = "Blue Clearance",
                text = {
                    {
                    "{C:attention}Cards{} can become {C:enhanced}Capital{},",
                    "{C:enhanced}Periods{} or {C:enhanced}Bigrams{}"
                    },
                    {
                        "Applies {C:attention}Purple Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Purple Clearance",
                }
            },
            clearance_feli_fag_cerulean = {
                name = "Cerulean Clearance",
                text = {
                    {
                    "No {C:attention}repeat{} words"
                    },
                    {
                        "Applies {C:attention}Blue Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Blue Clearance",
                }
            },
            clearance_feli_fag_teal = {
                name = "Teal Clearance",
                text = {
                    {
                        "{C:red}-#1#{} Discard"
                    },
                    {
                        "Applies {C:attention}Cerulean Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Cerulean Clearance",
                }
            },
            clearance_feli_fag_green = {
                name = "Green Clearance",
                text = {
                    {
                    "{X:blind,C:white}X#1#{} Blind Req."
                    },
                    {
                    "Applies {C:attention}Teal Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Teal Clearance",
                }
            },
            clearance_feli_fag_yellow = {
                name = "Yellow Clearance",
                text = {
                    {
                        "{C:attention}Pronoun Palace{} Jokers'",
                        "abilities can {C:red}backfire",
                        "even more"
                    },
                    {
                        "Applies {C:attention}Green Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Green Clearance",
                }
            },
            clearance_feli_fag_orange = {
                name = "Orange Clearance",
                text = {
                    {
                        "{C:attention}-#1#{} Joker Slot"
                    },
                    {
                        "Applies {C:attention}Yellow Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Yellow Clearance",
                }
            },
            clearance_feli_fag_red = {
                name = "Red Clearance",
                text = {
                    {
                        "Only {C:attention}Pronoun Palace",
                        "{C:enhanced}Card Modifiers{}",
                        "are {C:attention}enabled{}",
                    },
                    {
                        "{C:attention}Pronoun Palace","{C:enhanced}Enhancements{} have",
                        "bigger downsides",
                    },
                    {
                        "{C:attention}Cards{} can become {C:enhanced}Linked{}",
                        "after beating a Blind"

                    },
                    {
                        "Applies {C:attention}Cerulean Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Orange Clearance",
                }
            },
            clearance_feli_fag_hazel = {
                name = "Hazel Clearance",
                text = {
                    {
                        "{C:enhanced}Wooden Cards{} have a {C:green}1 in 5{} chance",
                        "of {C:red,E:2}self destructing{}",
                        "after beating a Blind",
                    },
                    {
                        "{C:attention}-#1#{} Joker Slot",
                        "{X:blind,C:white}X#2#{} Blind Req."

                    },
                    {
                        "Applies {C:attention}Red Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Red Clearance",
                }
            },
            clearance_feli_fag_lavender = {
                name = "Lavender Clearance",
                text = {
                    {
                        "{C:enhanced}Crit Cards{} have a {C:green}1 in 4{} chance",
                        "of {C:red,E:2}self destructing{}",
                        "after beating a Blind",
                    },
                    {
                        "{C:attention}-#1#{} Joker Slot",
                        "{X:blind,C:white}X#2#{} Blind Req."

                    },
                    {
                        "Applies {C:attention}Hazel Clearance{}",
                    }
                },
                unlock = {
                    "Win a {C:red}non-daily{} run on",
                    "Hazel Clearance",
                }
            },


        }
    },
    misc = {
        dictionary={
            b_feli_fag_clearances = "Clearances",
            k_feli_fag_clearances = "Clearance"
        },
    }
}