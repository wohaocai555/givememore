GMM.get_unlocked_jokers = function()
    local unlocked_jokers = {}
    for _, v in ipairs(G.P_CENTER_POOLS.Joker) do
        if v.discovered then
            table.insert(unlocked_jokers, v)
        end
    end
    table.sort(unlocked_jokers, function(a, b) return (a.order or 0) < (b.order or 0) end)
    return unlocked_jokers
end

GMM.get_unlocked_planets = function()
    local unlocked_planets = {}
    for _, v in ipairs(G.P_CENTER_POOLS.Planet) do
        if v.discovered then
            table.insert(unlocked_planets, v)
        end
    end
    table.sort(unlocked_planets, function(a, b) return (a.order or 0) < (b.order or 0) end)
    return unlocked_planets
end

GMM.get_unlocked_tarots = function()
    local unlocked_tarots = {}
    for _, v in ipairs(G.P_CENTER_POOLS.Tarot) do
        if v.discovered then
            table.insert(unlocked_tarots, v)
        end
    end
    table.sort(unlocked_tarots, function(a, b) return (a.order or 0) < (b.order or 0) end)
    return unlocked_tarots
end

GMM.get_unlocked_spectrals = function()
    local unlocked_spectrals = {}
    for _, v in ipairs(G.P_CENTER_POOLS.Spectral) do
        if v.discovered then
            table.insert(unlocked_spectrals, v)
        end
    end
    table.sort(unlocked_spectrals, function(a, b) return (a.order or 0) < (b.order or 0) end)
    return unlocked_spectrals
end

GMM.give_card = function(center_key, set_name)
    if not G.jokers or not G.consumeables then
        attention_text({
            text = localize('gmm_error_no_area'),
            scale = 1,
            hold = 1.5,
            cover = G.HUD,
            align = 'cm',
        })
        return nil
    end

    local area = G.jokers
    if set_name == 'Planet' or set_name == 'Tarot' or set_name == 'Spectral' then
        area = G.consumeables
    end

    local card_params = {
        set = set_name,
        key = center_key,
        area = area,
        skip_materialize = true,
        bypass_discovery_center = true,
        bypass_discovery_ui = true,
    }
    
    if set_name == 'Joker' and GMM.mod.config.enable_negative then
        card_params.edition = 'e_negative'
    end

    local card = SMODS.add_card(card_params)
    if card then
        card:start_materialize()
    end
    
    if G.GAME and G.GAME.blind then
        G.GAME.blind:juice_up()
    end

    return card
end

GMM.give_money = function()
    if not G.GAME then return 0 end
    local amount = GMM.mod.config.money or 50
    G.GAME.dollars = (G.GAME.dollars or 0) + amount

    attention_text({
        text = '+' .. amount .. localize('$'),
        scale = 1.5,
        hold = 2,
        cover = G.HUD,
        align = 'cm',
    })

    if G.GAME.blind then
        G.GAME.blind:juice_up()
    end

    return amount
end
