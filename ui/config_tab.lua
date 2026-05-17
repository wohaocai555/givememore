local money_config = {
    ref_table = GMM.mod.config,
    ref_value = 'money',
    text = tostring(GMM.mod.config.money or 50)
}

G.FUNCS.gmm_money_minus = function(e)
    local config = GMM.mod.config
    config.money = math.max(0, (config.money or 50) - 20)
    money_config.text = tostring(config.money)
    SMODS.save_mod_config(GMM.mod)
end

G.FUNCS.gmm_money_plus = function(e)
    local config = GMM.mod.config
    config.money = (config.money or 50) + 20
    money_config.text = tostring(config.money)
    SMODS.save_mod_config(GMM.mod)
end

GMM.mod.config_tab = function()
    local config = GMM.mod.config
    return {
        n = G.UIT.ROOT,
        config = {
            r = 0.1,
            minw = 8,
            align = "cm",
            padding = 0.1,
            colour = G.C.BLACK,
        },
        nodes = {
            {
                n = G.UIT.C,
                config = { align = "cm", padding = 0.2 },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = 0.1 },
                        nodes = {
                            {
                                n = G.UIT.T,
                                config = {
                                    text = localize('gmm_config_title'),
                                    scale = 0.6,
                                    colour = G.C.UI.TEXT_LIGHT,
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", colour = G.C.L_BLACK, r = 0.1, padding = 0.1 },
                        nodes = {
                            create_toggle({
                                label = localize('gmm_negative'),
                                ref_table = config,
                                ref_value = 'enable_negative',
                                callback = function()
                                    SMODS.save_mod_config(GMM.mod)
                                end,
                            }),
                        },
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm", colour = G.C.L_BLACK, r = 0.1, padding = 0.1 },
                        nodes = {
                            {
                                n = G.UIT.T,
                                config = {
                                    text = localize('gmm_money'),
                                    scale = 0.4,
                                    colour = G.C.UI.TEXT_LIGHT,
                                },
                            },
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    r = 0.1,
                                    colour = G.C.RED,
                                    hover = true,
                                    button = 'gmm_money_minus',
                                    minw = 0.8,
                                    minh = 0.5,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = '-',
                                            scale = 0.5,
                                            colour = G.C.UI.TEXT_LIGHT,
                                        },
                                    },
                                },
                            },
                            {
                                n = G.UIT.T,
                                config = {
                                    ref_table = money_config,
                                    ref_value = 'text',
                                    scale = 0.5,
                                    colour = G.C.UI.TEXT_LIGHT,
                                },
                            },
                            {
                                n = G.UIT.C,
                                config = {
                                    align = "cm",
                                    r = 0.1,
                                    colour = G.C.GREEN,
                                    hover = true,
                                    button = 'gmm_money_plus',
                                    minw = 0.8,
                                    minh = 0.5,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T,
                                        config = {
                                            text = '+',
                                            scale = 0.5,
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
