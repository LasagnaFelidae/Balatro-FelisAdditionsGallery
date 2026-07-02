--- here i would do shit to setup the daily seed so that its the same
--- 
--- 
--- 
--- 




-- this is where the daily deck is
SMODS.Back{
    key = "letter_deck_",
    name = "Letter Deck",
    atlas = 'deckBacks',
    pos = {x = 0, y = 0},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            self.config.ante_scaling,
            self.config.discards,
            self.config.hand_size
        } }
    end,
    config = {
        akyrs_starting_letters = AKYRS.scrabble_letters,
        starting_deck_size = 100,
        akyrs_selection = 1e100,
        discards = 2,
        akyrs_wording_enabled = true,
        akyrs_start_with_no_cards = true,
        akyrs_letters_mult_enabled = true,
        akyrs_hide_normal_hands = true,
        ante_scaling = 2,
        hand_size = 2,
        vouchers = {'v_akyrs_alphabet_soup','v_akyrs_crossing_field'}
    },
}       

-- ask gabby here how to do the joker selection thingy