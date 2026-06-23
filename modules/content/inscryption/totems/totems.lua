FelisAG.highlighted_head = FelisAG.highlighted_head or nil
FelisAG.active_totem = FelisAG.active_totem or nil
FelisAG.totem_text = "NULL"

G.FUNCS.feli_fag_totem_button = function(e)
	if G.feli_fag_totems then
		local card = e.config.ref_table
		local highlighted_head = FelisAG.highlighted_head or nil
		if card.ability.totem_active then
			if highlighted_head then
				if highlighted_head.ability.tribe ~= card.ability.totem_tribe then
					-- SWITCH
					FelisAG.totem_text = localize("k_feli_fag_switch_button")
					e.config.button = "feli_fag_combine_totem"
					e.config.colour = G.C.BLUE
				else
					FelisAG.totem_text = localize("feli_fag_switch_button")
					e.config.button = nil
					e.config.colour = G.C.UI.BACKGROUND_INACTIVE
				end
			else
				FelisAG.totem_text = localize("k_feli_fag_separate_button")
				e.config.button = "feli_fag_separate_totem"
				e.config.colour = G.C.RED
			end
		else
			if highlighted_head and FelisAG.active_totem == nil then
				FelisAG.totem_text = localize("k_feli_fag_combine_button")
				e.config.button = "feli_fag_combine_totem"
				e.config.colour = G.C.BLUE
			else
				FelisAG.totem_text = localize("k_feli_fag_combine_button")
				e.config.button = nil
				e.config.colour = G.C.UI.BACKGROUND_INACTIVE
			end
		end
	end
end
--[[
G.FUNCS.feli_fag_can_pull = function(e)
	local card = e.config.ref_table
    if (G.GAME.pack_choices and G.GAME.pack_choices >= 1) then
        if #G.feli_fag_totems.cards < G.feli_fag_totems.config.card_limit then
            e.config.colour = G.ARGS.LOC_COLOURS.feli_fag_ttm
            e.config.button = "feli_fag_pull"
        elseif (#G.feli_fag_totems.cards < G.feli_fag_totems.config.card_limit + 2) and card.ability.is_totem_head then
            e.config.colour = G.ARGS.LOC_COLOURS.feli_fag_ttm
            e.config.button = "feli_fag_pull"
        end
	else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.feli_fag_pull = function(e)
    local card = e.config.ref_table
    G.GAME.pack_choices = G.GAME.pack_choices - 1
    if G.GAME.pack_choices < 1 then
        G.FUNCS.end_consumeable(e)
    end
    card.area:remove_card(card)
    card:add_to_deck()
    G.feli_fag_totems:emplace(card)
end
]]
G.FUNCS.feli_fag_separate_totem = function(e)
    local body_card = e.config.ref_table
    if not body_card then return end
    if not body_card.ability.totem_active then return end

    local tribe = body_card.ability.totem_tribe
    if tribe then
        local tribe_data = FelisAG.indexTribe(tribe)
        if tribe_data then
            local head_key = "c_feli_fag_" .. tribe_data.totem_key
            SMODS.add_card{ key = head_key, area = G.feli_fag_totems }
        end
    end

    FelisAG.removeTotemSigils()

	body_card.children.center:set_sprite_pos({x = body_card.children.center.sprite_pos.x, y = 3})
	body_card.ability.sprite_pos ={
        x = body_card.children.center.sprite_pos.x,
        y = 3
    }

    body_card.ability.totem_active = false
    body_card.ability.totem_tribe = nil
    body_card.ability.extra_slots_used = 0
    FelisAG.active_totem = nil
	play_sound("feli_fag_totem_separate",1)
end

G.FUNCS.feli_fag_combine_totem = function(e)
    local body_card = e.config.ref_table
    if not body_card then return end
    if not FelisAG.highlighted_head then return end

    local head = FelisAG.highlighted_head

    if not body_card.ability.is_totem_body then return end

    local active_totem = FelisAG.active_totem

    -- SWITCH
    if body_card.ability.totem_active then
        if head.ability.tribe ~= body_card.ability.totem_tribe then
            local old_tribe = body_card.ability.totem_tribe
            local old_tribe_data = FelisAG.indexTribe(old_tribe)
            local old_tribe_key = "c_feli_fag_" .. old_tribe_data.totem_key

            SMODS.destroy_cards(head, nil, nil, true)
            FelisAG.highlighted_head = nil

            SMODS.add_card{ key = old_tribe_key, area = G.feli_fag_totems }

            FelisAG.removeTotemSigils()

            body_card.ability.totem_tribe = head.ability.tribe

            local tribe_data = FelisAG.indexTribe(head.ability.tribe)


            FelisAG.applyTotemSigils(body_card, body_card.ability.totem_tribe)
			play_sound("feli_fag_totem_switch",1)
        end
    else


        -- COMBINE
        body_card.ability.totem_tribe = head.ability.tribe
        body_card.ability.totem_active = true

        body_card.children.center:set_sprite_pos({
            x = body_card.children.center.sprite_pos.x,
            y = 2
        })
        body_card.ability.sprite_pos = {
            x = body_card.children.center.sprite_pos.x,
            y = 2
        }

        local tribe_data = FelisAG.indexTribe(head.ability.tribe)

        SMODS.destroy_cards(head, nil, nil, true)
        FelisAG.highlighted_head = nil

        FelisAG.active_totem = body_card
        FelisAG.applyTotemSigils(body_card, body_card.ability.totem_tribe)
        play_sound("feli_fag_totem_combine",1)
        body_card.ability.extra_slots_used = 1
        
    end
end

local retvars_lookup = {
    feli_fag_ttm_sgl_midas     = { 	SMODS.Stickers["feli_fag_ttm_sgl_midas"] 		and SMODS.Stickers["feli_fag_ttm_sgl_midas"].config.extra.dollars },
    feli_fag_ttm_sgl_leader    = 		SMODS.Stickers["feli_fag_ttm_sgl_leader"] 	and {SMODS.Stickers["feli_fag_ttm_sgl_leader"].config.extra.mult_mod,0},
    feli_fag_ttm_sgl_stinky    = 		SMODS.Stickers["feli_fag_ttm_sgl_stinky"] 	and { (1-SMODS.Stickers["feli_fag_ttm_sgl_stinky"].config.extra.xbscore)*100 },
}

FelisAG.Consumable = SMODS.Consumable:extend{
    in_pool = function(self, args)
		return (G.GAME.feli_fag_totems_enabled) or false
	end,
	set_badges = function(self, card, badges)
        if card.ability.is_totem_head and (card.ability.tribe == "Banana" or card.ability.tribe == "Printer") then
            badges[#badges+1] = create_badge(localize('k_feli_fag_revo'), HEX('7E7AFF'), HEX('40093A'), 1 )
        end
        if card.ability.is_totem_head and (card.ability.tribe == "Misprint") then
            badges[#badges+1] = create_badge(localize('k_feli_fag_bd'), HEX('01c1e6'), HEX('ffffff'), 1 )
        end
        badges[#badges+1] = create_badge(localize('k_feli_fag_ins'), HEX('7f1232'), HEX('f2a655'), 1 )
	end,
	select_card = G.feli_fag_totems,
}

SMODS.ConsumableType {
    key = 'feli_fag_totem_parts',
    default = 'c_feli_fag_ttm_undying',
    primary_colour = HEX('FFFFFF'),
    secondary_colour = HEX('C49761'),
    collection_rows = { 5, 5},
	select_card = G.feli_fag_totems,
    loc_txt = {
        undiscovered = {
			name = "Not Discovered",
			text = {
				"Purchase or use",
                "this card in an",
                "unseeded run to",
                "learn what it does"
			},
		},
    },
    
}
SMODS.UndiscoveredSprite{
    key = 'feli_fag_totem_parts',
    atlas = "insTotemsUndis",
    pos = {x=0, y=1}
}


for _, data in ipairs(FelisAG.totem_sigil_table) do
    FelisAG.Consumable {
        key = "feli_fag_" .. data.totem_key,
        set = "feli_fag_totem_parts",
        config = {
			is_totem_body 	= true,
            totem_sigil 	= data.key,   
            totem_active    = false,               
            totem_tribe     = nil,
			sprite_pos = {x = data.totem_x, y = 3},
			soul_pos = {x = data.totem_x, y = 5},
            extra_slots_used = 0,
        },
        atlas = "insTotems",
        pos = {x = data.totem_x, y = 3},
		soul_pos = {x = data.totem_x, y = 5, draw = function (card, scale_mod, rotate_mod)
            card.children.floating_sprite:draw_shader('dissolve',0, nil, nil, card.children.center,scale_mod, rotate_mod,0,-100,nil, 0.2)
            card.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, card.children.center, scale_mod, rotate_mod,0,0-0.2)
        end},
		
        cost = data.cost,
		loc_vars = function(self, info_queue, card)
			local tribe_name = card.ability.totem_tribe
			local sigil = card.ability.totem_sigil
			local display = tribe_name and tribe_name or localize('k_none')
			local colour = tribe_name and G.C.FILTER or G.C.UI.TEXT_INACTIVE

            if tribe_name == "Misprint" then
				info_queue[#info_queue+1] = G.P_CENTERS["e_bd_misprinted"]
			end
            

			if card.ability.totem_sigil then
				local retvars = retvars_lookup[sigil] or {}
				info_queue[#info_queue + 1] = { key = sigil, set = "Other", vars = retvars }
			end

			local main_end = {
				{
					n = G.UIT.C,
					config = { align = "bm", padding = 0.02 },
					nodes = {
						{
							n = G.UIT.C,
							config = { align = "m", colour = colour, r = 0.05, padding = 0.05 },
							nodes = {
								{ n = G.UIT.T, config = { text = ' ' .. display .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true } },
							}
						}
					}
				}
			}

			return { vars = { display }, main_end = main_end }
		end,
		load = function (self,card)
			G.E_MANAGER:add_event(Event({
				func = function() 
						if card.ability.totem_active then
							FelisAG.active_totem = card
							FelisAG.applyTotemSigils(card, card.ability.totem_tribe)
						end
						card.children.center:set_sprite_pos({
							x = card.ability.sprite_pos.x,
							y = card.ability.sprite_pos.y,
						})
					return true 
				end
			}))
		end,
        can_use = function(self, card)
		
        end,
        use = function(self, card, area, copier)

        end,
        remove_from_deck = function(self,card,from_debuff)
			if card.ability.totem_active and not from_debuff then
				local old_tribe = card.ability.totem_tribe
				local old_tribe_data = FelisAG.indexTribe(old_tribe)
				local old_tribe_key = "c_feli_fag_" .. old_tribe_data.totem_key
				SMODS.add_card{ key = old_tribe_key, area = G.feli_fag_totems }
				FelisAG.removeTotemSigils()
				FelisAG.active_totem = nil
			elseif card.ability.totem_active and from_debuff then
				FelisAG.removeTotemSigils()
			end
		end,
		add_to_deck = function(self,card,from_debuff)
			if card.ability.totem_active and from_debuff then 
				FelisAG.applyTotemSigils(card, card.ability.totem_tribe)
			elseif not card.ability.totem_active and not from_debuff then
				play_sound('feli_fag_totem_add', 1)	
			end
		end,
		calculate = function(self,card,context) 
			if context.selling_self and card.ability.totem_active then
				local old_tribe = card.ability.totem_tribe
				local old_tribe_data = FelisAG.indexTribe(old_tribe)
				local old_tribe_key = "c_feli_fag_" .. old_tribe_data.totem_key
				SMODS.add_card{ key = old_tribe_key, area = G.feli_fag_totems }
				FelisAG.removeTotemSigils()
			end
			if context.drawing_cards and card.ability.totem_active then 
				FelisAG.applyTotemSigils(card, card.ability.totem_tribe)
			end
		end,
    }
end

for _, data in ipairs(FelisAG.tribe_table) do
    FelisAG.Consumable {
        key = "feli_fag_" .. data.totem_key,
        set = "feli_fag_totem_parts",
        config = {
			is_totem_head 	= true,           
            tribe     		= data.key,      
            extra_slots_used = 0,
        },
        atlas = "insTotems",
        pos = {x = data.totem_x, y = 0},
        cost = data.cost,
        loc_vars = function (self, info_queue, card)
            if data.key == "Misprint" then
				info_queue[#info_queue+1] = G.P_CENTERS["e_bd_misprinted"]
			end
        end,
        can_use = function(self, card)

        end,
        use = function(self, card, area, copier)

        end,
        
    }
end



FelisAG.get_totem_head = function(totem)
    local a = nil -- var to store the found totem
    for k, v in pairs(FelisAG.tribe_table) do -- <- go through the tribe_table and find the matching one
        if v.key == totem.ability.totem_tribe then
            a = v.key
        end
    end
    for k, v in pairs(G.P_CENTER_POOLS.feli_fag_totem_parts) do
        if v.config.tribe == a and a then
            return v -- return the center if it matches
        end
    end
end

SMODS.DrawStep { -- mostly taken from the seal drawing thing
    key = 'feli_fag_totem_head',
    order = -10, -- so it draws behind the card, higher nums draw above
    func = function(self, layer)
        G.totem_heads_shared = G.totem_heads_shared or {} -- create the table to store all sprites 
        if self.ability and self.ability.totem_tribe and FelisAG.get_totem_head(self) then -- proper checks, self explanatory
            local totem = FelisAG.get_totem_head(self) -- for easy access
            if not G.totem_heads_shared[totem.key] then -- if not found in table, create the sprite inside to be able to draw it
                G.totem_heads_shared[totem.key] = SMODS.create_sprite(0, 0, G.CARD_W, G.CARD_H, totem.atlas, {x = totem.pos.x, y = totem.pos.y+1}) -- sprite // y+1 to get activated sprite pos instead
            end
            G.totem_heads_shared[totem.key].role.draw_major = self -- taken from seal code so idk much either
            G.totem_heads_shared[totem.key]:draw_shader('dissolve', nil, nil, nil, self.children.center, nil, nil, nil,-1.80) -- -1.5 controls the height offset here // -1.5 can be changed dynamically if you asign a value for it in each head center and changing the -1.5 here to totem["whatever_value_you_set"]
            if self.edition then G.totem_heads_shared[totem.key]:draw_shader(SMODS.Edition.obj_table[self.edition.key].shader, nil, self.ARGS.send_to_shader, nil, self.children.center, nil, nil, nil,-1.5) end -- check if an edition exists and apply it on the drawn head
            
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}