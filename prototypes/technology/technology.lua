data.raw["technology"]["steel-axe"].prerequisites = {"steel-processing","iron-pickaxe"}
data.raw["technology"]["steel-axe"].effects = {{type = "character-mining-speed", modifier = 0.4}}
data.raw["technology"]["stone-wall"].prerequisites = {"better-furnaces"}
data.raw["technology"]["steel-processing"].prerequisites = {"iron-pickaxe","metalworking"}
--temp
data.raw["technology"]["automation"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["logistics"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["optics"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["landfill"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["toolbelt"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["military"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["logistic-science-pack"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["oil-processing"].prerequisites = {"material-sampling"}
--temp
data.raw["technology"]["gun-turret"].prerequisites = {"material-sampling"}



data:extend({

  {
      type = "technology",
	  name = "material-sampling",
      icon = "__UnRealistic__/graphics/icons/wooden-lab.png",
      icon_size = 64, icon_mipmaps = 4,
	    order = "a-a-a",
      unit =
      {
        count = 2,
        ingredients =
        {
          {"wood-sample", 1}
        },
        time = 5
      }
  },
  {
    type = "technology",
  name = "woodworking",
    icon = "__UnRealistic__/graphics/entity/technology/woodworking.png",
    icon_size = 72,  icon_mipmaps = 4,
    order = "a-a-b",
  effects =
    {
      {
          type = "unlock-recipe",
          recipe = "wooden-chest"
      },
    },
     prerequisites = {"material-sampling"},
   unit =
    {
      count = 2,
      ingredients =
      {
        {"wood-sample", 2}
      },
      time = 5
    }
  },
  {
      type = "technology",
      name = "stone-pickaxe",
      icon = "__UnRealistic__/graphics/entity/technology/stone-axe.png",
      icon_size = 256, icon_mipmaps = 4,
      order = "a-a-c",
      effects =
      {
        {
        type = "character-mining-speed",
        modifier = 0.3
        }
      },
      prerequisites = {"woodworking"},
      unit =
      {
      count = 5,
      ingredients =
      {
        {"wood-sample", 2}
      },
      time = 5
    }
  },
  {
    type = "technology",
    name = "iron-pickaxe",
    icon = "__UnRealistic__/graphics/entity/technology/iron-axe.png",
    icon_size = 256, icon_mipmaps = 4,
    order = "a-a-c",
    effects =
    {
      {
      type = "character-mining-speed",
      modifier = 0.3
      }
    },
    prerequisites = {"stone-pickaxe","metalworking"},
    unit =
    {
    count = 10,
    ingredients =
    {
      {"wood-sample", 2},
      {"stone-sample", 2}
    },
    time = 5
  }
  },
  {
    type = "technology",
    name = "stone-sample",
    icon = "__UnRealistic__/graphics/icons/stone-sample.png",
    icon_size = 64,
    icon_mipmaps = 4,
    order = "a-b-a",
    prerequisites = {"material-sampling"},
    unit =
    {
    count = 2,
    ingredients = 
    {
      {"wood-sample", 2}
    },
    time = 5
    },
    effects =
    {
      {
          type = "unlock-recipe",
          recipe = "stone-sample"
      },
      {
        type = "unlock-recipe",
        recipe = "use-rock-gt"
      },
      {
        type = "unlock-recipe",
        recipe = "use-rock-gr"
      },
      {
        type = "unlock-recipe",
        recipe = "use-rock-pd"
      },
      {
        type = "unlock-recipe",
        recipe = "use-rock-an"
      },
      {
        type = "unlock-recipe",
        recipe = "use-rock-il"
      },
    },
  },
  {
    type = "technology",
  name = "furnaces",
    icon = "__UnRealistic__/graphics/entity/technology/basic-furnace.png",
    icon_size = 146,
    icon_mipmaps = 4,
  effects =
    {
      {
          type = "unlock-recipe",
          recipe = "basic-furnace"
      },
  {
          type = "unlock-recipe",
          recipe = "stone-brick"
      },
    },
     prerequisites = {"stone-sample"},
   unit =
    {
      count = 5,
      ingredients =
      {
        {"wood-sample", 1},
        {"stone-sample", 2}
      },
      time = 5
    }
  },
  {
    type = "technology",
  name = "smelting",
    icon = "__UnRealistic__/graphics/entity/technology/basic-furnace.png",
    icon_size = 146,
    icon_mipmaps = 4,
  effects =
    {
  {
          type = "unlock-recipe",
          recipe = "copper-plate-raw"
      },
  {
          type = "unlock-recipe",
          recipe = "iron-plate-raw"
      }
    },
     prerequisites = {"furnaces"},
   unit =
    {
      count = 5,
      ingredients =
      {
        {"wood-sample", 1},
        {"stone-sample", 3}
      },
      time = 5
    }
  },
  {
    type = "technology",
  name = "metalworking",
    icon = "__UnRealistic__/graphics/entity/technology/metalworking.png",
    icon_size = 76,
   effects = {
              {
                type = "unlock-recipe",
                recipe = "iron-chest"
              },
              {
               type = "unlock-recipe",
               recipe = "pipe"
              },
              {
              type = "unlock-recipe",
               recipe = "pipe-to-ground"
              },
              {
              type = "unlock-recipe",
              recipe = "iron-stick"
              },
              {
               type = "unlock-recipe",
               recipe = "iron-gear-wheel"
              },
              {
              type = "unlock-recipe",
              recipe = "small-boiler"
              }
           },
   prerequisites = {"smelting"},
   unit =
    {
      count = 5,
      ingredients =
      {
        {"stone-sample", 3}
      },
      time = 5
    }
  },
  {
    type = "technology",
  name = "better-furnaces",
    icon = "__UnRealistic__/graphics/entity/technology/stone-furnace.png",
    icon_size = 151,
  effects =
    {
      {
          type = "unlock-recipe",
          recipe = "stone-furnace"
      },
    },
     prerequisites = {"metalworking"},
   unit =
    {
      count = 5,
      ingredients =
      {
        {"stone-sample", 2}
      },
      time = 5
    }
  },
  {
      type = "technology",
	  name = "burner-technology",
      icon = "__UnRealistic__/graphics/icons/small-boiler.png",
			icon_size = 64,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "burner-inserter"
        },
		{
            type = "unlock-recipe",
            recipe = "boiler"
        },
      },
       prerequisites = {"metalworking"},
	   unit =
      {
        count = 10,
        ingredients =
        {
          {"wood-sample", 2},
          {"stone-sample", 5}
        },
        time = 5
      }
  },
  {
    type = "technology",
  name = "automated-mining",
    icon = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-E.png",
    icon_size = 170,
  effects =
    {
      {
          type = "unlock-recipe",
          recipe = "burner-mining-drill"
      },
    {
          type = "unlock-recipe",
          recipe = "drill-head"
      },
    },
     prerequisites = {"burner-technology"},
   unit =
    {
      count = 10,
      ingredients =
      {
        {"wood-sample", 2},
        {"stone-sample", 5}
      },
      time = 5
    }
},
{
  type = "technology",
name = "crushing",
  icon = "__UnRealistic__/graphics/entity/technology/crushing.png",
  icon_size = 256,
  icon_mipmaps = 4,
effects =
  {
{
        type = "unlock-recipe",
        recipe = "crushed-chalcocite"
    },
{
        type = "unlock-recipe",
        recipe = "crushed-goethite"
    },
    {
      type = "unlock-recipe",
      recipe = "iron-plate-crsh"
  },
  {
    type = "unlock-recipe",
    recipe = "copper-plate-crsh"
}
  },
   prerequisites = {"furnaces"},
 unit =
  {
    count = 5,
    ingredients =
    {
      {"wood-sample", 1},
      {"stone-sample", 3}
    },
    time = 5
  }
},

    --[[
  {
      type = "technology",
	  name = "electricity",
      icon = "__base__/graphics/icons/small-electric-pole.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "small-electric-pole"
        },
		{
            type = "unlock-recipe",
            recipe = "steam-engine"
        },
				{
            type = "unlock-recipe",
            recipe = "offshore-pump"
        },
				{
            type = "unlock-recipe",
            recipe = "copper-cable"
        },
	
      },
       prerequisites = {"metalworking","woodworking"},
	   unit =
      {
        count = 15,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "electronics-0",
      icon = "__base__/graphics/icons/electronic-circuit.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "transport-belt"
        },
		{
            type = "unlock-recipe",
            recipe = "inserter"
        },
				{
            type = "unlock-recipe",
            recipe = "repair-pack"
        },
				{
            type = "unlock-recipe",
            recipe = "electric-mining-drill"
        },
				{
            type = "unlock-recipe",
            recipe = "electronic-circuit"
        },
		
      },
       prerequisites = {"electricity"},
	   unit =
      {
        count = 15,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "advanced_researching",
      icon = "__base__/graphics/icons/lab.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "lab"
        },
		{
            type = "unlock-recipe",
            recipe = "automation-science-pack"
        },
				{
            type = "unlock-recipe",
            recipe = "repair-pack"
        },
				{
            type = "unlock-recipe",
            recipe = "electric-mining-drill"
        },
				{
            type = "unlock-recipe",
            recipe = "electronic-circuit"
        },
		
      },
       prerequisites = {"electronics-0"},
	   upgrade = true,
	   order = "z-a-a",
	   unit =
      {
        count = 20,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "advanced_researching_2",
	  order = "z-a-a",
      icon = "__base__/graphics/icons/lab.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "logistic-science-pack"
        },
		
      },
       prerequisites = {"advanced_researching"},
	   upgrade = true,
	   unit =
      {
        count = 5,
        ingredients =
        {
          {"automation-science-pack", 1}
        },
        time = 10
      }
  },
   {
      type = "technology",
	  name = "bb_guns",
      icon = "__base__/graphics/icons/pistol.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "pistol"
        },
		{
            type = "unlock-recipe",
            recipe = "firearm-magazine"
        },
      },
       prerequisites = {"metalworking"},
	   unit =
      {
        count = 20,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "radar",
      icon = "__base__/graphics/icons/radar.png",
			icon_size = 32,
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "radar"
        },
		
      },
       prerequisites = {"electronics-0"},
	   unit =
      {
        count = 5,
        ingredients =
        {
          {"automation-science-pack", 1}
        },
        time = 10
      }
  },
]]--
})