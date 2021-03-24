require("prototypes.categories.fuel-category")
require("prototypes.entity.resources")
require("prototypes.item.item")
require("prototypes.entity.entity")
require("prototypes.recipe.recipe")
require("prototypes.technology.technology")

--Ore generation--###################################################

bobmods.lib.resource.generate(goethite)
data.raw.resource["goethite"].autoplace = resource_autoplace.resource_autoplace_settings
  {
    name = "goethite",
    order = "c",
    base_density = 8,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1,
  }
bobmods.lib.resource.generate(magnetite)
bobmods.lib.resource.generate(malachite)
bobmods.lib.resource.generate(chalcocite)
data.raw.resource["chalcocite"].autoplace = resource_autoplace.resource_autoplace_settings
  {
    name = "chalcocite",
    order = "c",
    base_density = 8,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1,
  }
bobmods.lib.resource.generate(granite)
bobmods.lib.resource.generate(peridotite)
bobmods.lib.resource.generate(anorthosite)
bobmods.lib.resource.generate(ilmenite)
bobmods.lib.resource.generate(lignite)
data.raw.resource["lignite"].autoplace = resource_autoplace.resource_autoplace_settings
  {
    name = "lignite",
    order = "c",
    base_density = 8,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1,
  }
bobmods.lib.resource.generate(anthracite)
bobmods.lib.resource.generate(sandstone)


require("prototypes.item.item")
--Original ore removal--###################################################

data.raw.resource['iron-ore'].autoplace = nil
data.raw['autoplace-control']['iron-ore'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['iron-ore'] then
      preset.basic_settings.autoplace_controls['iron-ore'] = nil
    end
end

data.raw.resource['copper-ore'].autoplace = nil
data.raw['autoplace-control']['copper-ore'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['copper-ore'] then
      preset.basic_settings.autoplace_controls['copper-ore'] = nil
    end
end
data.raw.resource['coal'].autoplace = nil
data.raw['autoplace-control']['coal'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['coal'] then
      preset.basic_settings.autoplace_controls['coal'] = nil
    end
end

data.raw.resource['stone'].autoplace = nil
data.raw['autoplace-control']['stone'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['stone'] then
      preset.basic_settings.autoplace_controls['stone'] = nil
    end
end

data.raw.resource['uranium-ore'].autoplace = nil
data.raw['autoplace-control']['uranium-ore'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['uranium-ore'] then
      preset.basic_settings.autoplace_controls['uranium-ore'] = nil
    end
end

--Rock Overhaul--###################################################

data.raw["simple-entity"]['rock-huge'].minable.results = {{name = "granite", amount_min = 24, amount_max = 50}, {name = "lignite", amount_min = 24, amount_max = 50}}
data.raw["simple-entity"]['rock-big'].minable.results = {{name = "anorthosite", amount_min = 12, amount_max = 23}, {name = "magnetite", amount_min = 10, amount_max = 20}}
data.raw["simple-entity"]['sand-rock-big'].minable.results = {{name = "sandstone", amount_min = 19, amount_max = 25}}

--Fuel Overhaul and fuel attribuition################################

data.raw["item"]["lignite"].fuel_category = "fire"
data.raw["item"]["lignite"].fuel_value = "2MJ"
data.raw["item"]["anthracite"].fuel_category = "fire"
data.raw["item"]["anthracite"].fuel_value = "8MJ"
data.raw["item"]["wood"].fuel_category = "fire"
data.raw["item"]["wooden-chest"].fuel_category = "fire"
data.raw["item"]["wooden-chest"].fuel_value = "1MJ"
