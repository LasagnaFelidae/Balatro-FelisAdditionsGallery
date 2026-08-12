SMODS.Achievement{
    key = "j_o_permit",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "akyrs_spell_word" and FelisAG.lexicographer_slurs[args.lowercase_word]) then
            return true
        end
    end
}
SMODS.Achievement{
    key = "red_letter",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_lexicographer")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "corkline",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_fisher")) then
                return true
            end
        end
    end
}
--[[
SMODS.Achievement{
    key = "clown_cache",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_jubilist")) then
                return true
            end
        end
    end
}
]]
SMODS.Achievement{
    key = "sealed_packet",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_accountant")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "correction_fluid",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_clerk")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "persimmon",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_distributor")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "rusty_razor_blade",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_mycologists")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "icbm",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_martyr")) then
                return true
            end
        end
    end
}

SMODS.Achievement{
    key = "Sockpuppet",
    hidden_name = false,
    hidden_text = false,
    bypass_all_unlocked = true,
    unlock_condition = function (self, args)
        if args and (args.type == "win") then
            if next(SMODS.find_card("j_feli_fag_akyrs_public_broadcast")) then
                return true
            end
        end
    end
}