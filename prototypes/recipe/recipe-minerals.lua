
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
  {
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
  },
  {
  --https://en.wikipedia.org/wiki/Comminution
    type = "recipe",
    name = "windmill",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"raw-wood", 10}
    },
    result = "windmill"
  },
  --https://en.wikipedia.org/wiki/Extractive_metallurgy
}
)
