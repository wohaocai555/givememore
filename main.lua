GMM = {}

GMM.init = function(self)
    self.mod = SMODS.current_mod
    self.mod_id = self.mod.id
    self.config = self.mod.config
    self.original = {}

    self.state = {
        enabled = true,
        current_selection = nil,
        selection_type = nil,
        hud_visible = false,
        hud_collapsed = false,
        selection_page = 1,
        cards_per_page = 10,
        hud_box = nil,
    }
end

GMM:init()

GMM.include = function(filename)
    local chunk = SMODS.load_file(filename, GMM.mod_id)
    if chunk then chunk() end
end

GMM.include("functions.lua")
GMM.include("localization.lua")
GMM.include("ui/selection.lua")
GMM.include("ui/config_tab.lua")
GMM.include("ui/hud.lua")

GMM.init_localization()

GMM.UI.create_hud = function()
    if not G.ROOM_ATTACH then return end
    if GMM.state.hud_box then return end

    GMM.state.hud_box = UIBox({
        definition = GMM.UI.hud(),
        config = {
            align = "tli",
            bond = "Weak",
            offset = { x = 0, y = 0.2, },
            major = G.ROOM_ATTACH
        },
    })
end

G.FUNCS.can_gmm_hud = function(e)
    if G.STATE == G.STATES.SELECTING_HAND then
        e.UIBox.states.visible = true
    else
        e.UIBox.states.visible = false
    end
end

GMM.UI.remove_hud = function()
    if GMM.state.hud_box then
        GMM.state.hud_box:remove()
        GMM.state.hud_box = nil
    end
end

GMM.original.start_run = Game.start_run
function Game.start_run(self, args)
    GMM.UI.remove_hud()
    local result = GMM.original.start_run(self, args)

    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            GMM.UI.create_hud()
            return true
        end
    }))

    return result
end

GMM.original.main_menu = Game.main_menu
function Game.main_menu(self, change_context)
    GMM.UI.remove_hud()
    return GMM.original.main_menu(self, change_context)
end

GMM.original.end_round = Game.end_round
function Game.end_round(self, round)
    GMM.UI.remove_hud()
    return GMM.original.end_round(self, round)
end