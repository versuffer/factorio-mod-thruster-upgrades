-- Thruster MK2 entities

local thruster_mk2_corpse = table.deepcopy(data.raw["corpse"]["thruster-remnants"])
thruster_mk2_corpse.name = "thruster-mk2-remnants"


local thruster_mk2 = table.deepcopy(data.raw["thruster"]["thruster"])
thruster_mk2.name = "thruster-mk2"
thruster_mk2.corpse = "thruster-mk2-remnants"
thruster_mk2.max_health = data.raw["thruster"]["thruster"].max_health * 1.4
thruster_mk2.minable.result = "thruster-mk2"

thruster_mk2.max_performance.fluid_usage = data.raw["thruster"]["thruster"].max_performance.fluid_usage * 1.7
thruster_mk2.max_performance.effectivity = data.raw["thruster"]["thruster"].max_performance.effectivity + 0.1
thruster_mk2.fuel_fluid_box.volume = data.raw["thruster"]["thruster"].fuel_fluid_box.volume * 2
thruster_mk2.oxidizer_fluid_box.volume = data.raw["thruster"]["thruster"].oxidizer_fluid_box.volume * 2

-- Thruster MK3 entitites

local thruster_mk3_corpse = table.deepcopy(data.raw["corpse"]["thruster-remnants"])
thruster_mk3_corpse.name = "thruster-mk3-remnants"

local thruster_mk3 = table.deepcopy(data.raw["thruster"]["thruster"])
thruster_mk3.name = "thruster-mk3"
thruster_mk3.corpse = "thruster-mk3-remnants"
thruster_mk3.max_health = data.raw["thruster"]["thruster"].max_health * 1.8
thruster_mk3.minable.result = "thruster-mk3"

thruster_mk3.max_performance.fluid_usage = data.raw["thruster"]["thruster"].max_performance.fluid_usage * 2.5
thruster_mk3.max_performance.effectivity = data.raw["thruster"]["thruster"].max_performance.effectivity + 0.3
thruster_mk3.fuel_fluid_box.volume = data.raw["thruster"]["thruster"].fuel_fluid_box.volume * 3
thruster_mk3.oxidizer_fluid_box.volume = data.raw["thruster"]["thruster"].oxidizer_fluid_box.volume * 3

data.extend(
    {
        thruster_mk2_corpse,
        thruster_mk2,
        thruster_mk3_corpse,
        thruster_mk3,
    }
)