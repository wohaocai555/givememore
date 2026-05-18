GMM.LOCALIZATION = {
    gmm_title = "Give Me More",
    gmm_joker = "Joker",
    gmm_planet = "Planet",
    gmm_tarot = "Tarot",
    gmm_spectral = "Spectral",
    gmm_money_btn = "Give Money",
    gmm_select = "Select",
    gmm_select_joker = "Select a Joker",
    gmm_select_planet = "Select a Planet Card",
    gmm_select_tarot = "Select a Tarot Card",
    gmm_config_title = "Give Me More Settings",
    gmm_negative = "Negative Edition on Jokers",
    gmm_money = "Money Amount",
    gmm_error_no_area = "Cannot add card now!",
}

GMM.init_localization = function()
    for k, v in pairs(GMM.LOCALIZATION) do
        G.localization.misc.dictionary[k] = v
    end
end
