--data.raw["resource"]["copper-ore"].icon = "__UnRealistic__/graphics/icons/chalcocite.png"
--data.raw["resource"]["copper-ore"].filename = "__UnRealistic__/graphics/entity/ores/chalcocite-ore.png"
data.raw["item"]["copper-ore"].icon = "__UnRealistic__/graphics/icons/chalcocite.png"

-- function ChangeFileName (t, filename)
	-- if filename == nil then
		-- t.filename = string.gsub (t.filename, "__base__", "__UnRealistic__")
	-- else
		-- t.filename = filename
	-- end
-- end

-- local ChangeTextureConfiguration = {
	-- ["__base__/graphics/entity/copper-ore/copper-ore.png"] = function (t) ChangeFileName (t[#t]) end
	-- }

data:extend(
{
 -- {
--    type = "resource-category",
--    name = "ores test",
--  },
  -- {
    -- type = "resource-category",
    -- name = "ores test2",
  -- },
  -- {
    -- type = "item-subgroup",
    -- name = "ore-processing",
	-- group = "resource-refining",
	-- order = "r-a",
  -- },
  
   {
   type = "autoplace-control",
   name = "malachite",
   richness = true,
   order = "b-e"
   },
   {
   type = "noise-layer",
   name = "malachite"
   },
   {
   type = "resource",
   name = "malachite",
   icon = "__UnRealistic__/graphics/icons/malachite.png",
   flags = {"placeable-neutral"},
   order="a-b-a",
   map_color = {r=0.26, g=0.30, b=0.39},
   minable =
   {
     hardness = 1,
--     mining_particle = "ore-particle",
     mining_time = 1.5,
     result = "malachite"
   },
   collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
   selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
   autoplace =
   {
     control = "malachite",
     sharpness = 1,
     richness_multiplier = 13000,
     richness_base = 350,
     size_control_multiplier = 0.06,
     peaks = {
      {
        influence = 0.3,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.55,
        noise_layer = "malachite",
        noise_octaves_difference = -2.3,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
     },
   },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
   stages =
   {
     sheet =
     {
      filename = "__UnRealistic__/graphics/entity/ores/malachite-ore.png",
      priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
     }
   },
  },
{
    type = "item",
    name = "malachite",
    icon = "__UnRealistic__/graphics/icons/malachite.png",
    flags = {"goes-to-main-inventory"},
--   subgroup = "ores",
    order = "a[malachite]",
    stack_size = 200
},
}
)
