GMM.UI = GMM.UI or {}
GMM.UI.hud = function()
    local is_collapsed = GMM.state.hud_collapsed

    if is_collapsed then
        return {
            n = G.UIT.ROOT,
            config = {
                align = "tli",
                colour = G.C.UI.TRANSPARENT_LIGHT,
                r = 0.1,
            },
            nodes = {
                {
                    n = G.UIT.C,
                    config = {
                        align = "cm",
                        padding = 0.02,
                        r = 0.1,
                        colour = G.C.BLACK,
                        func = 'can_gmm_hud',
                    },
                    nodes = {
                        {
                            n = G.UIT.C,
                            config = {
                                align = "cm",
                                r = 0.1,
                                colour = G.C.GOLD,
                                hover = true,
                                button = 'gmm_toggle_hud',
                                minw = 0.5,
                                minh = 0.4,
                            },
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = '>',
                                        scale = 0.4,
                                        colour = G.C.UI.TEXT_DARK,
                                    },
                                },
                            },
                        },
                    },
                },
            },
        }
    end

    return {
        n = G.UIT.ROOT,
        config = {
            align = "tli",
            colour = G.C.UI.TRANSPARENT_LIGHT,
            r = 0.1,
        },
        nodes = {
            {
                n = G.UIT.C,
                config = {
                    align = "cm",
                    padding = 0.05,
                    r = 0.1,
                    colour = G.C.BLACK,
                    func = 'can_gmm_hud',
                },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    r = 0.1,
                                    colour = G.C.GOLD,
                                    hover = true,
                                    button = 'gmm_toggle_hud',
                                    minw = 0.5,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = '<',
                                            scale = 0.4,
                                            colour = G.C.UI.TEXT_DARK,
                                        },
                                    },
                                },
                            },
                            {
                                n = G.UIT.T,
                                config = {
                                    text = localize('gmm_title'),
                                    scale = 0.35,
                                    colour = G.C.GOLD,
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    padding = 0.02,
                                    r = 0.1,
                                    colour = G.C.RED,
                                    hover = true,
                                    button = 'gmm_open_joker_selection',
                                    minw = 2.2,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = localize('gmm_joker'),
                                            scale = 0.3,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    padding = 0.02,
                                    r = 0.1,
                                    colour = G.C.BLUE,
                                    hover = true,
                                    button = 'gmm_open_planet_selection',
                                    minw = 2.2,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = localize('gmm_planet'),
                                            scale = 0.3,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    padding = 0.02,
                                    r = 0.1,
                                    colour = G.C.PURPLE,
                                    hover = true,
                                    button = 'gmm_open_tarot_selection',
                                    minw = 2.2,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = localize('gmm_tarot'),
                                            scale = 0.3,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    padding = 0.02,
                                    r = 0.1,
                                    colour = G.C.GREEN,
                                    hover = true,
                                    button = 'gmm_open_spectral_selection',
                                    minw = 2.2,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = localize('gmm_spectral'),
                                            scale = 0.3,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.02 },
                        nodes = {
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    padding = 0.02,
                                    r = 0.1,
                                    colour = G.C.MONEY,
                                    hover = true,
                                    button = 'gmm_give_money',
                                    minw = 2.2,
                                    minh = 0.4,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = localize('gmm_money_btn') .. ' (+' .. (GMM.mod.config.money or 50) .. ')',
                                            scale = 0.3,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    }
end

G.FUNCS.gmm_toggle_hud = function(e)
    GMM.state.hud_collapsed = not GMM.state.hud_collapsed
    GMM.UI.remove_hud()
    GMM.UI.create_hud()
end
