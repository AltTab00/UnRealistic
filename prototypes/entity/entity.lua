data.raw["lab"]["lab"].fast_replaceable_group = "lab"

local hit_effects = require ("prototypes.entity.hit-effects")
local sounds = require("prototypes.entity.sounds")
require ("prototypes.entity.remnants")

data:extend({
{
    type = "lab",
    name = "wooden-lab",
		energy_source =
    {
      type = "burner",
      usage_priority = "secondary-input",
	    effectivity = 0.3,
	    fuel_inventory_size = 1,
      fuel_category = "fire"
    },
	  energy_usage = "10kW",
    minable = {mining_time = 0.5, result = "wooden-lab"},
    max_health = 250,
    corpse = "wooden-lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          tint = {r = 0.8, g = 0.478, b = 0},
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            tint = {r = 0.8, g = 0.478, b = 0},
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 106,
          height = 100,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-1, 1),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-light.png",
            blend_mode = "additive",
            draw_as_light = true,
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          tint = {r = 0.8, g = 0.478, b = 0},
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            tint = {r = 0.8, g = 0.478, b = 0},
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    inputs =
    {
      "wood-sample","stone-sample"
    },
    researching_speed = 0.5,
   module_specification =
   {
     module_slots = 0,
     module_info_icon_shift = {0, 0.5},
     module_info_multi_row_initial_height_modifier = -0.3
   },
    fast_replaceable_group = "lab",
    icon = "__UnRealistic__/graphics/icons/wooden-lab.png",
    icon_size = 64, icon_mipmaps = 4,
		flags = {"placeable-player", "player-creation"},
		},

    {
      type = "furnace",
      name = "basic-furnace",
      icon = "__UnRealistic__/graphics/icons/basic-furnace.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.2, result = "basic-furnace"},
      max_health = 150,
      corpse = "basic-furnace-remnants",
      dying_explosion = "stone-furnace-explosion",
      repair_sound = sounds.manual_repair,
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
      open_sound = sounds.machine_open,
      close_sound = sounds.machine_close,
      vehicle_impact_sound = sounds.car_stone_impact,
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/furnace.ogg",
            volume = 0.6
          }
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        audible_distance_modifier = 0.4
      },
      resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    energy_usage = "90kW",
    crafting_speed = 0.3,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "fire",
      effectivity = 0.3,
      fuel_inventory_size = 1,
      emissions_per_minute = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.1,
        maximum_intensity = 0.5
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = "__UnRealistic__/graphics/entity/furnaces/basic-furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__UnRealistic__/graphics/entity/furnaces/hr-basic-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
              priority = "extra-high",
              line_length = 8,
              width = 20,
              height = 49,
              frame_count = 48,
              axially_symmetrical = false,
              direction_count = 1,
              shift = util.by_pixel(-0.5, 5.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
              blend_mode = "additive",
              width = 54,
              height = 74,
              repeat_count = 48,
              shift = util.by_pixel(0, 4),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              }
            },
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
          blend_mode = "additive",
          draw_as_sprite = false,
          width = 56,
          height = 56,
          repeat_count = 48,
          shift = util.by_pixel(0, 44),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-ground-light.png",
            blend_mode = "additive",
            draw_as_sprite = false,
            width = 116,
            height = 110,
            repeat_count = 48,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          }
        },
      },
    },
    fast_replaceable_group = "furnace",
    next_upgrade = "stone-furnace",
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        shift = util.by_pixel(0, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
    },
    {
      type = "furnace",
      name = "windmill",
      icon = "__UnRealistic__/graphics/icons/windmill.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.2, result = "windmill"},
      max_health = 150,
      corpse = "medium-small-remnants",
      dying_explosion = "stone-furnace-explosion",
      repair_sound = sounds.manual_repair,
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
      open_sound = sounds.machine_open,
      close_sound = sounds.machine_close,
      vehicle_impact_sound = sounds.car_stone_impact,
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/heat-exchanger.ogg",
            volume = 0.6
          }
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        audible_distance_modifier = 0.4
      },
      resistances =
    {
      {
        type = "impact",
        percent = 20
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"grinding"},
    result_inventory_size = 1,
    energy_usage = "100W",
    crafting_speed = 0.1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "grind",
      effectivity = 0.3,
      fuel_inventory_size = 1,
      emissions_per_minute = 0,
      --[[light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.1,
        maximum_intensity = 0.5
      },]]--
      --[[smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }]]--
    },
    animation =
    {
      layers =
      {
        {
          filename = "__UnRealistic__/graphics/entity/windmill/working-hr-windmill.png",
          priority = "extra-high",
          tint = {r = 255, g = 237, b = 131},
          width = 142,
          height = 161,
          frame_count = 32,
          line_length = 6,
          animation_speed = 3,
          scale = 0.7,
          shift = util.by_pixel(0, -10),
        },
        {
          filename = "__UnRealistic__/graphics/entity/windmill/working-hr-windmill-shadow.png",
          width = 250,
          height = 190,
          frame_count = 32,
          line_length = 6,
          animation_speed = 3,
          scale = 0.7,
          shift = util.by_pixel(34, -3),
          draw_as_shadow = true,
        },
      }
    },
    --fast_replaceable_group = "windmill",
    --next_upgrade = "stone-furnace",
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        shift = util.by_pixel(0, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
    },
    {
      type = "assembling-machine",
      name = "assembling-machine-0",
      icon = "__UnRealistic__/graphics/icons/assembling-machine-0.png",
      icon_size = 32,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-0"},
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances =
      {
        {
          type = "fire",
          percent = 40
        }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      fast_replaceable_group = "assembling-machine",
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            tint = {r = 0.4, g = 0.4, b = 0.4},
            priority = "high",
            width = 108,
            height = 110,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
              tint = {r = 0.4, g = 0.4, b = 0.4},
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority="high",
            width = 95,
            height = 83,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5.5),
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
              priority="high",
              width = 190,
              height = 165,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5, 5),
              scale = 0.5
            }
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = {
          {
            filename = "__base__/sound/furnace.ogg",
            volume = 0.8
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = {"crafting"},
      crafting_speed = 0.10,
      energy_source =
      {
        type = "burner",
        fuel_category = "fire",
        effectivity = 0.3,
        fuel_inventory_size = 1,
        emissions_per_minute = 4,
        light_flicker =
        {
          color = {0,0,0},
          minimum_intensity = 0.1,
          maximum_intensity = 0.5
        },
        smoke =
        {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 9,
            position = {0.0, -0.8},
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60
          }
        }
      },
      energy_usage = "450kW",
      ingredient_count = 2,
    },
})