data.raw["technology"]["steel-processing"].prerequisites = {"mining","advanced_researching"}
data.raw["technology"]["automation"].prerequisites = {"advanced_researching"}
data.raw["technology"]["logistics"].prerequisites = {"advanced_researching"}
data.raw["technology"]["optics"].prerequisites = {"advanced_researching"}
data.raw["technology"]["turrets"].prerequisites = {"advanced_researching","bb_guns"}
data.raw["technology"]["stone-walls"].prerequisites = {"smelting"}
data.raw["technology"]["landfill"].prerequisites = {"advanced_researching_2"}
data.raw["technology"]["toolbelt"].prerequisites = {"advanced_researching_2"}
data.raw["technology"]["military"].prerequisites = {"advanced_researching","bb_guns"}
data.raw["technology"]["armor-making"].prerequisites = {"advanced_researching"}
data.raw["technology"]["oil-processing"].prerequisites = {"advanced_researching_2"}



data:extend({
  {
      type = "technology",
	  name = "researching",
      icon = "__UnRealistic__/graphics/icons/lab-0.png",
	  upgrade = true,
	  order = "z-a-a",
      unit =
      {
        count = 2,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
   {
      type = "technology",
	  name = "mining",
      icon = "__UnRealistic__/graphics/icons/stone-axe.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "stone-axe"
        }
      },
       prerequisites = {"researching"},
	   unit =
      {
        count = 2,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
	},
	  {
      type = "technology",
	  name = "smelting",
      icon = "__base__/graphics/icons/stone-furnace.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "stone-furnace"
        },
		{
            type = "unlock-recipe",
            recipe = "stone-brick"
        },
		{
            type = "unlock-recipe",
            recipe = "copper-plate"
        },
		{
            type = "unlock-recipe",
            recipe = "iron-plate"
        }
      },
       prerequisites = {"researching"},
	   unit =
      {
        count = 10,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "burner",
      icon = "__base__/graphics/icons/burner-inserter.png",
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
		{
            type = "unlock-recipe",
            recipe = "burner-mining-drill"
        },
      },
       prerequisites = {"metalworking"},
	   unit =
      {
        count = 10,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "metalworking",
      icon = "__base__/graphics/icons/iron-plate.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "iron-axe"
        },
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
      },
       prerequisites = {"smelting"},
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
	  name = "woodworking",
      icon = "__base__/graphics/icons/wood.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "wooden-chest"
        },
		{
            type = "unlock-recipe",
            recipe = "wood"
        },
		
      },
       prerequisites = {"researching"},
	   unit =
      {
        count = 5,
        ingredients =
        {
          {"science-pack-0", 2}
        },
        time = 5
      }
  },
  {
      type = "technology",
	  name = "electricity",
      icon = "__base__/graphics/icons/small-electric-pole.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "small-electric-pole"
        },
		{
            type = "unlock-recipe",
            recipe = "transport-belt"
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
	  effects =
      {
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
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "lab"
        },
		{
            type = "unlock-recipe",
            recipe = "science-pack-1"
        },
				{
            type = "unlock-recipe",
            recipe = "repair-pack"
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
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "science-pack-2"
        },
		
      },
       prerequisites = {"advanced_researching"},
	   upgrade = true,
	   unit =
      {
        count = 5,
        ingredients =
        {
          {"science-pack-1", 1}
        },
        time = 10
      }
  },
   {
      type = "technology",
	  name = "bb_guns",
      icon = "__base__/graphics/icons/pistol.png",
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
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "radar"
        },
		
      },
       prerequisites = {"advanced_researching"},
	   unit =
      {
        count = 5,
        ingredients =
        {
          {"science-pack-1", 1}
        },
        time = 10
      }
  },
  {
      type = "technology",
	  name = "windmill",
      icon = "__UnRealistic__/graphics/icons/windmill.png",
	  effects =
      {
        {
            type = "unlock-recipe",
            recipe = "windmill"
        },
		{
            type = "unlock-recipe",
            recipe = "crushed-copper"
        },
		{
            type = "unlock-recipe",
            recipe = "crushed-iron"
        },
		{
            type = "unlock-recipe",
            recipe = "copper-ore-c"
        },
		{
            type = "unlock-recipe",
            recipe = "iron-ore-c"
        },
		
      },
       prerequisites = {"woodworking"},
	   unit =
      {
        count = 2,
        ingredients =
        {
          {"science-pack-0", 5}
        },
        time = 20
      }
  },
})