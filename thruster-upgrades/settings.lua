-- Common

local enable_thruster_fluid_box_symmetry_setting = {
    type = "bool-setting",
    name = "thruster-upgrades-enable-thruster-fluid-box-symmetry",
    setting_type = "startup",
    default_value = false
}

local enable_thruster_fuel_oxidizer_fuel_value_adjustment = {
    type = "bool-setting",
    name = "thruster-upgrades-enable-thruster-fuel-oxidizer-fuel-value-adjustment",
    setting_type = "startup",
    default_value = false
}

local thruster_fuel_oxidizer_fuel_value_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-fuel-oxidizer-fuel-value-kj",
    setting_type = "startup",
    minimum_value = 50,
    maximum_value = 100000,
    default_value = 50
}

-- Thruster MK2 settings

local thruster_mk2_full_storage_efficiency_percent_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk2-full-storage-efficiency-percent",
    setting_type = "startup",
    minimum_value = 51,
    maximum_value = 100,
    default_value = 61
}

local thruster_mk2_full_storage_fluid_usage_percent_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk2-full-storage-fluid-usage-percent",
    setting_type = "startup",
    minimum_value = 200,
    maximum_value = 1000,
    default_value = 340
}

local thruster_mk2_storage_volume_units_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk2-storage-volume-units",
    setting_type = "startup",
    minimum_value = 1000,
    maximum_value = 50000,
    default_value = 2000
}

-- Thruster MK3 settings

local thruster_mk3_full_storage_efficiency_percent_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk3-full-storage-efficiency-percent",
    setting_type = "startup",
    minimum_value = 51,
    maximum_value = 100,
    default_value = 81
}

local thruster_mk3_full_storage_fluid_usage_percent_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk3-full-storage-fluid-usage-percent",
    setting_type = "startup",
    minimum_value = 200,
    maximum_value = 1000,
    default_value = 500
}

local thruster_mk3_storage_volume_units_setting = {
    type = "int-setting",
    name = "thruster-upgrades-thruster-mk3-storage-volume-units",
    setting_type = "startup",
    minimum_value = 1000,
    maximum_value = 50000,
    default_value = 3000
}

data.extend(
    {
        enable_thruster_fluid_box_symmetry_setting,
        enable_thruster_fuel_oxidizer_fuel_value_adjustment,
        thruster_fuel_oxidizer_fuel_value_setting,

        thruster_mk2_full_storage_efficiency_percent_setting,
        thruster_mk2_full_storage_fluid_usage_percent_setting,
        thruster_mk2_storage_volume_units_setting,
        thruster_mk3_full_storage_efficiency_percent_setting,
        thruster_mk3_full_storage_fluid_usage_percent_setting,
        thruster_mk3_storage_volume_units_setting,
    }
)
