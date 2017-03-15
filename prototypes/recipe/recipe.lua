data.raw["recipe"]["iron-axe"].enabled = false
data.raw["recipe"]["wooden-chest"].enabled = false
data.raw["recipe"]["iron-chest"].enabled = false
data.raw["recipe"]["transport-belt"].enabled = false
data.raw["recipe"]["burner-inserter"].enabled = false
data.raw["recipe"]["inserter"].enabled = false
data.raw["recipe"]["small-electric-pole"].enabled = false
data.raw["recipe"]["pipe"].enabled = false
data.raw["recipe"]["pipe-to-ground"].enabled = false
data.raw["recipe"]["stone-brick"].enabled = false
data.raw["recipe"]["repair-pack"].enabled = false
data.raw["recipe"]["boiler"].enabled = false
data.raw["recipe"]["steam-engine"].enabled = false
data.raw["recipe"]["burner-mining-drill"].enabled = false
data.raw["recipe"]["electric-mining-drill"].enabled = false
data.raw["recipe"]["offshore-pump"].enabled = false
data.raw["recipe"]["stone-furnace"].enabled = false
data.raw["recipe"]["lab"].enabled = false
data.raw["recipe"]["wood"].enabled = false
data.raw["recipe"]["iron-plate"].enabled = false
data.raw["recipe"]["copper-plate"].enabled = false
data.raw["recipe"]["copper-cable"].enabled = false
data.raw["recipe"]["iron-stick"].enabled = false
data.raw["recipe"]["iron-gear-wheel"].enabled = false
data.raw["recipe"]["electronic-circuit"].enabled = false
data.raw["recipe"]["science-pack-1"].enabled = false
data.raw["recipe"]["science-pack-2"].enabled = false
data.raw["recipe"]["pistol"].enabled = false
data.raw["recipe"]["firearm-magazine"].enabled = false
data.raw["recipe"]["radar"].enabled = false

data:extend({
  {
    type = "recipe",
    name = "lab-0",
    enabled = "true",
    energy_required = 10,
    ingredients =
    {
      {"raw-wood", 10}
    },
    result = "lab-0"
  },
  {
    type = "recipe",
    name = "science-pack-0",
    enabled = "true",
    energy_required = 5,
    ingredients =
    {
      {"raw-wood", 1}
    },
    result = "science-pack-0"
  },
   {
    type = "recipe",
    name = "stone-axe",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"raw-wood", 2},
	  {"stone", 1}
    },
    result = "stone-axe"
  },
  {
    type = "recipe",
    name = "windmill",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"raw-wood", 10},
	  {"stone", 2}
    },
    result = "stone-axe"
  },
}
)
