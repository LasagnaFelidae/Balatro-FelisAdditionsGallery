--[[local XmainMenuHook = Game.main_menu
function Game:main_menu(ctx)
    local r = XmainMenuHook(self,ctx)
end
]]

local gameInitHook = Game.init_game_object
function Game:init_game_object()
    local ret = gameInitHook(self)
    ret.feli_fag_totems_enabled = false
    ret.pseudorandom = G.GAME.pseudorandom and G.GAME.pseudorandom or {}

    return ret
end

local startRunHook = Game.start_run
function Game:start_run(args)
	local ret = startRunHook(self, args)
    if G.GAME.modifiers.feli_fag_totems_enabled then
        G.GAME.feli_fag_totems_enabled = G.GAME.modifiers.feli_fag_totems_enabled
    end
	FelisAG.highlighted_head = nil
	FelisAG.active_totem = nil
    return ret
end



local applyBackHook = Back.apply_to_run
function Back:apply_to_run()

    local c = applyBackHook(self)
    if self.effect.config.feli_fag_totems_enabled then
        G.GAME.modifiers.feli_fag_totems_enabled = self.effect.config.feli_fag_totems_enabled
    end

    return c
end