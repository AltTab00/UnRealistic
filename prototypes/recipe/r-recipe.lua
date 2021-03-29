data:extend({
    {
        type = "recipe",
        name = "iron-plate-raw",
        hidden = true,
        enabled = false,
        category = "smelting",
        energy_required = 5,
        ingredients = {{"goethite", 10}},
        result = "iron-plate"
    },
    {
        type = "recipe",
        name = "copper-plate-raw",
        hidden = true,
        enabled = false,
        category = "smelting",
        energy_required = 5,
        ingredients = {{"chalcocite", 10}},
        result = "copper-plate"
    },
    {
        type = "recipe",
        name = "crushed-goethite",
        enabled = false,
        ingredients = {{"goethite", 1}},
        result = "crushed-goethite"
    },
    {
        type = "recipe",
        name = "crushed-chalcocite",
        enabled = false,
        ingredients = {{"chalcocite", 1}},
        result = "crushed-chalcocite"
    },
    {
        type = "recipe",
        name = "iron-plate-crsh",
        hidden = true,
        enabled = false,
        category = "smelting",
        energy_required = 5,
        ingredients = {{"crushed-goethite", 5}},
        result = "iron-plate"
    },
    {
        type = "recipe",
        name = "copper-plate-crsh",
        hidden = true,
        enabled = false,
        category = "smelting",
        energy_required = 5,
        ingredients = {{"crushed-chalcocite", 5}},
        result = "copper-plate"
    },
})