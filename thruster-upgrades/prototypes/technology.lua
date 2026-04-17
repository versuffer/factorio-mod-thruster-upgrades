-- Thruster MK2 technologies

local thruster_mk2_technology = {
    type = "technology",
    name = "thruster-mk2",
    icon = "__thruster-upgrades__/graphics/technology/thruster-mk2-research.png",
    icon_size = 200,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "thruster-mk2"
      }
    },
    prerequisites = {
        "efficiency-module-2",
        "productivity-module-2",
        "metallurgic-science-pack",
        "agricultural-science-pack",
    },
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
      },
      time = 60
    }
}

-- Thruster MK3 technologies

local thruster_mk3_technology = {
    type = "technology",
    name = "thruster-mk3",
    icon = "__thruster-upgrades__/graphics/technology/thruster-mk3-research.png",
    icon_size = 200,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "thruster-mk3"
      }
    },
    prerequisites = {
        "thruster-mk2",
        "efficiency-module-3",
        "productivity-module-3",
        "electromagnetic-science-pack"
    },
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
      },
      time = 60
    }
}

data.extend(
    {
        thruster_mk2_technology,
        thruster_mk3_technology,
    }
)