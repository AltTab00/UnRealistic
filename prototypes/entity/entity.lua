data.raw["lab"]["lab"].fast_replaceable_group = "lab"

data:extend({
{
    type = "lab",
    name = "lab-0",
		energy_source =
    {
      type = "burner",
      usage_priority = "secondary-input",
	  effectivity = 0.5,
	  fuel_inventory_size = 1
    },
	  energy_usage = "1kW",
    minable = {mining_time = 1, result = "lab-0"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
   light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__UnRealistic__/graphics/entity/lab/lab-0.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__UnRealistic__/graphics/entity/lab/lab-0.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_usage = "1kW",
    inputs =
    {
      "science-pack-0",
    },
    researching_speed = 0.5,
   module_specification =
   {
     module_slots = 0,
     module_info_icon_shift = {0, 0.5},
     module_info_multi_row_initial_height_modifier = -0.3
   },
    fast_replaceable_group = "lab",
    icon = "__UnRealistic__/graphics/icons/lab-0.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		}
})