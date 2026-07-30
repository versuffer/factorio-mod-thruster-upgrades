-- Thruster fluid box symmetry

local modified_fuel_fluid_box = {
    {
        flow_direction = "input-output",
        direction = defines.direction.west,
        position = {-1.5, -2},
        enable_working_visualisations = { "pipe-4" }
    },
    {
        flow_direction = "input-output",
        direction = defines.direction.east,
        position = { 1.5, -2},
        enable_working_visualisations = { "pipe-1" }
    }
}

local modified_oxidizer_fluid_box = {
    {
        flow_direction = "input-output",
        direction = defines.direction.west,
        position = {-1.5, 0},
        enable_working_visualisations = { "pipe-3" }
    },
    {
        flow_direction = "input-output",
        direction = defines.direction.east,
        position = { 1.5, 0},
        enable_working_visualisations = { "pipe-2" }
    }
}

data.raw["thruster"]["thruster-mk2"].next_upgrade = "thruster-mk3"

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster-mk2"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster-mk2"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster-mk3"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster-mk3"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end

-- Thruster fuel/oxidizer fuel value adjustment

if settings.startup["thruster-upgrades-enable-thruster-fuel-oxidizer-fuel-value-adjustment"].value == true then
    local adjusted_fuel_value = settings.startup["thruster-upgrades-thruster-fuel-oxidizer-fuel-value-kj"].value .. "kJ"
    data.raw["fluid"]["thruster-fuel"].fuel_value = adjusted_fuel_value
    data.raw["fluid"]["thruster-oxidizer"].fuel_value = adjusted_fuel_value
end

-- Nested recipes

if settings.startup["thruster-upgrades-enable-nested-recipes"].value == true then
    data.raw.recipe["thruster-mk2"] = {
        type = "recipe",
        name = "thruster-mk2",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {type = "item", name = "thruster", amount = 1},
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "processing-unit", amount = 2},
            {type = "item", name = "electric-engine-unit", amount = 7},
            {type = "item", name = "tungsten-plate", amount = 15},
            {type = "item", name = "carbon-fiber", amount = 10},
            {type = "item", name = "efficiency-module-2", amount = 5},
            {type = "item", name = "productivity-module-2", amount = 5},
        },
        results = {{type = "item", name = "thruster-mk2", amount = 1}}
    }
    data.raw.recipe["thruster-mk3"] = {
        type = "recipe",
        name = "thruster-mk3",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type = "item", name = "thruster-mk2", amount = 1},
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "processing-unit", amount = 5},
            {type = "item", name = "electric-engine-unit", amount = 3},
            {type = "item", name = "tungsten-plate", amount = 15},
            {type = "item", name = "carbon-fiber", amount = 10},
            {type = "item", name = "efficiency-module-3", amount = 5},
            {type = "item", name = "productivity-module-3", amount = 5},
            {type = "item", name = "supercapacitor", amount = 5},
        },
        results = {{type = "item", name = "thruster-mk3", amount = 1}}
    }
end

-- Original thruster modifications
data.raw["thruster"]["thruster"].next_upgrade = "thruster-mk2"

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end
