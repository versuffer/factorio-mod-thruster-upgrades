-- Thruster MK2 items

local thruster_mk2_item = table.deepcopy(data.raw.item["thruster"])
thruster_mk2_item.name = "thruster-mk2"
thruster_mk2_item.icon = "__thruster-upgrades__/graphics/icons/thruster-mk2.png"
thruster_mk2_item.place_result = "thruster-mk2"
thruster_mk2_item.order = "f[thruster]"
thruster_mk2_item.subgroup = "space-platform"

-- Thruster MK3 items

local thruster_mk3_item = table.deepcopy(data.raw.item["thruster"])
thruster_mk3_item.name = "thruster-mk3"
thruster_mk3_item.icon = "__thruster-upgrades__/graphics/icons/thruster-mk3.png"
thruster_mk3_item.place_result = "thruster-mk3"
thruster_mk3_item.order = "f[thruster]"
thruster_mk3_item.subgroup = "space-platform"

data.extend(
    {
        thruster_mk2_item,
        thruster_mk3_item,
    }
)
