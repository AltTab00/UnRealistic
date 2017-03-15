data:extend({
  {
	type = "item",
    name = "lab-0",
    icon = "__UnRealistic__/graphics/icons/lab-0.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab-0]",
    place_result = "lab-0",
    stack_size = 10
  },
  {
    type = "tool",
    name = "science-pack-0",
    icon = "__UnRealistic__/graphics/icons/science-pack-0.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "a[science-pack-0]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "mining-tool",
    name = "stone-axe",
    icon = "__UnRealistic__/graphics/icons/stone-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 3 , type = "physical"}
        }
      }
    },
    durability = 1000,
    subgroup = "tool",
    order = "a[mining]-a[e-stone-axe]",
    speed = 2,
    stack_size = 20
  },
  {type = "item",
    name = "charcoal",
    icon = "__UnRealistic__/graphics/icons/charcoal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[charcoal]",
    stack_size = 200
  },
    {type = "item",
    name = "windmill",
    icon = "__UnRealistic__/graphics/icons/windmill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[windmill]",
    place_result = "windmill",
    stack_size = 10
  },
  {type = "item",
    name = "crushed-copper",
    icon = "__UnRealistic__/graphics/icons/crushed-chalcocite.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[crushed-copper]",
    stack_size = 200
  },
  {type = "item",
    name = "crushed-iron",
    icon = "__UnRealistic__/graphics/icons/crushed-iron.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "a[crushed-iron]",
    stack_size = 200
  },
  
})