local function create_selection_ui(card_pool, set_name, title)
    local current_set = set_name
    
    local function modify_card(card, center, i, j)
        card.states.hover.can = true
        card.states.drag.can = false
        card.states.collide.can = true
        
        local original_click = card.click
        card.click = function(self)
            GMM.give_card(center.key, current_set)
            if original_click then
                original_click(self)
            end
        end
    end
    
    local collection_ui = SMODS.card_collection_UIBox(card_pool, {4, 4, 4}, {
        no_materialize = true,
        h_mod = 0.95,
        modify_card = modify_card,
        back_func = 'exit_overlay_menu'
    })
    
    return collection_ui
end

G.FUNCS.gmm_open_joker_selection = function(e)
    if not GMM.ALLOWED_STATES[G.STATE] then return end
    local jokers = GMM.get_unlocked_jokers()
    if #jokers == 0 then return end
    
    G.SETTINGS.paused = true
    if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
    
    G.FUNCS.overlay_menu({
        definition = create_selection_ui(jokers, 'Joker', 'Select Joker'),
    })
end

G.FUNCS.gmm_open_planet_selection = function(e)
    if not GMM.ALLOWED_STATES[G.STATE] then return end
    local planets = GMM.get_unlocked_planets()
    if #planets == 0 then return end
    
    G.SETTINGS.paused = true
    if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
    
    G.FUNCS.overlay_menu({
        definition = create_selection_ui(planets, 'Planet', 'Select Planet'),
    })
end

G.FUNCS.gmm_open_tarot_selection = function(e)
    if not GMM.ALLOWED_STATES[G.STATE] then return end
    local tarots = GMM.get_unlocked_tarots()
    if #tarots == 0 then return end
    
    G.SETTINGS.paused = true
    if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
    
    G.FUNCS.overlay_menu({
        definition = create_selection_ui(tarots, 'Tarot', 'Select Tarot'),
    })
end

G.FUNCS.gmm_open_spectral_selection = function(e)
    if not GMM.ALLOWED_STATES[G.STATE] then return end
    local spectrals = GMM.get_unlocked_spectrals()
    if #spectrals == 0 then return end
    
    G.SETTINGS.paused = true
    if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
    
    G.FUNCS.overlay_menu({
        definition = create_selection_ui(spectrals, 'Spectral', 'Select Spectral'),
    })
end

G.FUNCS.gmm_give_money = function(e)
    if not GMM.ALLOWED_STATES[G.STATE] then return end
    GMM.give_money()
end
