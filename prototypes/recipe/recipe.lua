data.raw["recipe"]["wooden-chest"].enabled = false
data.raw["recipe"]["stone-brick"].enabled = false
data.raw["recipe"]["iron-chest"].enabled = false
data.raw["recipe"]["pipe-to-ground"].enabled = false
data.raw["recipe"]["iron-plate"].enabled = false
data.raw["recipe"]["copper-plate"].enabled = false
data.raw["recipe"]["iron-stick"].enabled = false
data.raw["recipe"]["stone-furnace"].enabled = false
data.raw["recipe"]["boiler"].enabled = false
--
data.raw["recipe"]["transport-belt"].enabled = false
--
data.raw["recipe"]["inserter"].enabled = false
--
data.raw["recipe"]["small-electric-pole"].enabled = false
--
data.raw["recipe"]["repair-pack"].enabled = false
--
data.raw["recipe"]["offshore-pump"].enabled = false
--
data.raw["recipe"]["lab"].enabled = false
--
data.raw["recipe"]["copper-cable"].enabled = false
--
data.raw["recipe"]["automation-science-pack"].enabled = false
--
data.raw["recipe"]["pistol"].enabled = false
--
data.raw["recipe"]["firearm-magazine"].enabled = false
--
data.raw["recipe"]["radar"].enabled = false
--
data.raw["recipe"]["light-armor"].enabled = false


data:extend({
  {
    type = "recipe",
    name = "pipe",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-plate", 1}
      },
      result = "pipe"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-plate", 2}
      },
      result = "pipe"
    }
  },
  {
    type = "recipe",
    name = "iron-gear-wheel",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-plate", 2}
      },
      result = "iron-gear-wheel"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-plate", 4},
      },
      result = "iron-gear-wheel"
    }
  },
  {
    type = "recipe",
    name = "stone-furnace",
    enabled = false,
    ingredients =
      {
        {"stone", 10},
        {"pipe", 1},
        {"iron-plate", 2},
      },
    result = "stone-furnace"
  },
  {
    type = "recipe",
    name = "burner-inserter",
    enabled = false,
    ingredients =
      {
        {"iron-gear-wheel", 5},
        {"iron-plate", 1},
        {"small-boiler", 1},
      },
    result = "burner-inserter",
  },
  {
    type = "recipe",
    name = "burner-mining-drill",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 8}, 
        {"pipe", 5},
        {"iron-plate", 2},
        {"stone-furnace", 1},
        {"boiler", 1},
        {"drill-head", 1}
      },
      result = "burner-mining-drill"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 15}, 
        {"pipe", 8},
        {"iron-plate", 4},
        {"stone-furnace", 2},
        {"boiler", 2},
        {"drill-head", 1}
      },
      result = "burner-mining-drill"
    }
  },
  --needs to be addressed
  {
    type = "recipe",
    name = "electric-mining-drill",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 8}, 
        {"pipe", 5},
        {"iron-plate", 10}
      },
      result = "steam-engine"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 10},
        {"pipe", 5},
        {"iron-plate", 50}
      },
      result = "steam-engine"
    }
  },
  --needs to be addressed
  {
    type = "recipe",
    name = "electronic-circuit",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 8}, 
        {"pipe", 5},
        {"iron-plate", 10}
      },
      result = "steam-engine"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 10},
        {"pipe", 5},
        {"iron-plate", 50}
      },
      result = "steam-engine"
    }
  },
  --needs to be addressed
  {
    type = "recipe",
    name = "steam-engine",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 8}, 
        {"pipe", 5},
        {"iron-plate", 10}
      },
      result = "steam-engine"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 10},
        {"pipe", 5},
        {"iron-plate", 50}
      },
      result = "steam-engine"
    }
  },
  {
    type = "recipe",
    name = "plank",
    ingredients =
      {
        {"wood", 2}, 
      },
    result = "plank",
    result_count = 2
  },
  {
    type = "recipe",
    name = "wood-lab",
    ingredients =
      {
        {"plank", 10},
        --{"stone", 5},
        {"ai-unit", 1},
      },
    result = "wooden-lab"
  },
  {
    type = "recipe",
    name = "wood-sample",
    ingredients =
      {
        {"wood", 2},
      },
    result = "wood-sample"
  },
  {
    type = "recipe",
    name = "stone-sample",
    enabled = false,
    ingredients =
      {
        {"chalcocite", 1},
        {"goethite", 1},
      },
    result = "stone-sample"
  },
  {
    type = "recipe",
    name = "use-rock-gt",
    enabled = false,
    ingredients =
      {
        {"goethite", 1},
      },
    result = "stone"
  },
  {
    type = "recipe",
    name = "use-rock-gr",
    enabled = false,
    ingredients =
      {
        {"granite", 1},
      },
    result = "stone"
  },
    {
    type = "recipe",
    name = "use-rock-pd",
    enabled = false,
    ingredients =
      {
        {"peridotite", 1},
      },
    result = "stone"
  },
  {
    type = "recipe",
    name = "use-rock-an",
    enabled = false,
    ingredients =
      {
        {"anorthosite", 1},
      },
    result = "stone"
  },
  {
    type = "recipe",
    name = "use-rock-il",
    enabled = false,
    ingredients =
      {
        {"ilmenite", 1},
      },
    result = "stone"
  },
  {
    type = "recipe",
    name = "basic-furnace",
    enabled = false,
    ingredients =
      {
        {"stone", 10},
      },
    result = "basic-furnace"
  },
  {
    type = "recipe",
    name = "small-boiler",
    enabled = false,
    ingredients = {{"iron-plate", 10}},
    result = "small-boiler"
  },
  {
    type = "recipe",
    name = "wood-fibers",
    enabled = false,
    ingredients = {{"wood", 2}},
    result = "wood-fibers",
    result_count = 2
  },
  {
    type = "recipe",
    name = "windmill",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 1},
      {"wood-fibers", 4},
      {"stone", 8}
    },
    result = "windmill"
  },
  {
    type = "recipe",
    name = "drill-head",
    enabled = false,
    ingredients = {{"iron-plate", 2}},
    result = "drill-head"
  },
  {
    type = "recipe",
    name = "assembling-machine-0",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 10}, 
      {"pipe", 2},
      {"iron-plate", 4},
      {"stone-furnace", 1},
      {"boiler", 1},
      {"burner-inserter", 4}
    },
    result = "assembling-machine-0"
  },
})