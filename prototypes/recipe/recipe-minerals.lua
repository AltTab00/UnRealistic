
data.raw["recipe"]["iron-plate"].enabled = false
data.raw["recipe"]["iron-plate"].ingredients = {{ "iron-ore", 10}}
data.raw["recipe"]["copper-plate"].enabled = false
data.raw["recipe"]["copper-plate"].ingredients = {{ "copper-ore", 10}}
--https://en.wikipedia.org/wiki/List_of_copper_ores
--https://en.wikipedia.org/wiki/Smelting
--https://en.wikipedia.org/wiki/Copper_extraction

 
data:extend({
  {
    type = "recipe",
    name = "charcoal",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"raw-wood", 2}
    },
    result = "charcoal"
  },
--[[  {
  --https://en.wikipedia.org/wiki/Destructive_distillation
    type = "recipe",
    name = "coke",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"coal", 10}
    },
    result = "coke"
  },
{
  --https://en.wikipedia.org/wiki/Petroleum_coke
    type = "recipe",
    name = "pet-coke",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"coal", 10}
    },
    result = "coke"
  },--]]
  {
  --https://en.wikipedia.org/wiki/Comminution
    type = "recipe",
    name = "windmill",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"raw-wood", 20}
    },
    result = "windmill"
  },
  {
    type = "recipe",
    name = "crushed-copper",
	category = "crushing",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"copper-ore", 5}
    },
    result = "crushed-copper"
  },
  {
    type = "recipe",
    name = "crushed-iron",
	category = "crushing",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"iron-ore", 5}
    },
    result = "crushed-iron"
  },
    {
    type = "recipe",
    name = "copper-ore-c",
	category = "smelting",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"crushed-copper", 5}
    },
    result = "copper-plate"
  },
  {
    type = "recipe",
    name = "iron-ore-c",
	category = "smelting",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"crushed-iron", 5}
    },
    result = "iron-plate"
  },
  
  
  
  
  --https://en.wikipedia.org/wiki/Extractive_metallurgy
  
})

