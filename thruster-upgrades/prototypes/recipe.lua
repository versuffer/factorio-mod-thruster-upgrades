-- Thruster MK2 recipies

local thruster_mk2_recipe = {
  type = "recipe",
  name = "thruster-mk2",
  enabled = false,
  energy_required = 15,
  ingredients = {
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = "processing-unit", amount = 15},
    {type = "item", name = "electric-engine-unit", amount = 7},
    {type = "item", name = "tungsten-plate", amount = 15},
    {type = "item", name = "carbon-fiber", amount = 10},
    {type = "item", name = "efficiency-module-2", amount = 5},
    {type = "item", name = "productivity-module-2", amount = 5},
  },
  results = {{type = "item", name = "thruster-mk2", amount = 1}}
}

-- Thruster MK3 recipies

local thruster_mk3_recipe = {
  type = "recipe",
  name = "thruster-mk3",
  enabled = false,
  energy_required = 20,
  ingredients = {
    {type = "item", name = "steel-plate", amount = 40},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "tungsten-plate", amount = 30},
    {type = "item", name = "carbon-fiber", amount = 20},
    {type = "item", name = "efficiency-module-3", amount = 5},
    {type = "item", name = "productivity-module-3", amount = 5},
    {type = "item", name = "supercapacitor", amount = 5},
  },
  results = {{type = "item", name = "thruster-mk3", amount = 1}}
}

data.extend(
    {
        thruster_mk2_recipe,
        thruster_mk3_recipe,
    }
)