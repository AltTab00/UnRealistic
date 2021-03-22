data:extend(
{
    {
    type = "corpse",
    name = "basic-furnace-remnants",
    icon = "__UnRealistic__/graphics/icons/basic-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "smelting-machine-remnants",
    order = "a-a-a",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__UnRealistic__/graphics/entity/furnaces/remnants/basic-furnace-remnants.png",
      line_length = 1,
      width = 76,
      height = 66,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, 10),
      hr_version =
      {
        filename = "__UnRealistic__/graphics/entity/furnaces/remnants/hr-basic-furnace-remnants.png",
        line_length = 1,
        width = 152,
        height = 130,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, 9.5),
        scale = 0.5
      }
    })
    },

    {
    type = "corpse",
    name = "wooden-lab-remnants",
    icon = "__UnRealistic__/graphics/icons/wooden-lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "production-machine-remnants",
    order = "a-g-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__base__/graphics/entity/lab/remnants/lab-remnants.png",
      tint = {r = 0.8, g = 0.478, b = 0},
      line_length = 1,
      width = 134,
      height = 100,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(7, 6),
      hr_version =
      {
        filename = "__base__/graphics/entity/lab/remnants/hr-lab-remnants.png",
        tint = {r = 0.8, g = 0.478, b = 0},
        line_length = 1,
        width = 266,
        height = 196,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(7, 5.5),
        scale = 0.5
      }
    })
  }
})