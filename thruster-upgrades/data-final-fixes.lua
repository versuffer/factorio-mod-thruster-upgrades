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

-- Thruster fuel/oxidizer fuel value adjustment

if settings.startup["thruster-upgrades-enable-thruster-fuel-oxidizer-fuel-value-adjustment"].value == true then
    local adjusted_fuel_value = settings.startup["thruster-upgrades-thruster-fuel-oxidizer-fuel-value-kj"].value .. "kJ"
    data.raw["fluid"]["thruster-fuel"].fuel_value = adjusted_fuel_value
    data.raw["fluid"]["thruster-oxidizer"].fuel_value = adjusted_fuel_value
end

-- Original thruster modifications
data.raw["thruster"]["thruster"].next_upgrade = "thruster-mk2"

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end

-- Thruster MK2 modifications

data.raw["thruster"]["thruster-mk2"].next_upgrade = "thruster-mk3"

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster-mk2"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster-mk2"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end

-- Thruster MK3 modifications

if settings.startup["thruster-upgrades-enable-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["thruster-mk3"].fuel_fluid_box.pipe_connections = modified_fuel_fluid_box
    data.raw["thruster"]["thruster-mk3"].oxidizer_fluid_box.pipe_connections = modified_oxidizer_fluid_box
end