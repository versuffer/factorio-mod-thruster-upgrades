-- Thruster MK2 entities

local thruster_mk2_corpse = table.deepcopy(data.raw["corpse"]["thruster-remnants"])
thruster_mk2_corpse.name = "thruster-mk2-remnants"
thruster_mk2_corpse.icon = "__thruster-upgrades__/graphics/icons/thruster-mk2.png"
thruster_mk2_corpse.animation = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk2/thruster-remnants",
    {
      scale = 0.5,
      direction_count = 1,
      line_length = 1,
      shift = {0, 3}
    }
)

local thruster_mk2 = table.deepcopy(data.raw["thruster"]["thruster"])
thruster_mk2.name = "thruster-mk2"
thruster_mk2.icon = "__thruster-upgrades__/graphics/icons/thruster-mk2.png"
thruster_mk2.factoriopedia_simulation =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.1
    game.simulation.camera_position = {0, 2}
    for x = -12, 11, 1 do
      for y = -3, 6 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "empty-space"}}
      end
    end
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNql1bFuwyAQxvF3uRlLPiCOzatEHUhMGiQbLMBVK4t3j5NU6tIh0rdy/G/4LbfReVrdknwoZDbylxgymdNG2X8GOz3egp0dGSq3tObiElVBPozumwzXD0HFT+6VLDH74mN4RPu0YRb0Q6bdg98debEX1yyTLdeY5uYa1zDaZ1LFP32L9QOW91h+xPIOtHvZM2jPmD1j9ozZM2bPoL0E7SVmLzF7idlLzF6C9gq0V5i9wuwVZq8wewXaa9BeY/Yas9eYvcbs38v3q+uLm/dPf8db0JdL+bnw0MlBD8Oh161sdV/rHYnoqQA=",
      position = {0, 0}
    }
    game.surfaces[1].create_entity{name = "thruster-mk2", position = {0, 0}, direction = defines.direction.north}
  ]]
}
thruster_mk2.corpse = "thruster-mk2-remnants"
thruster_mk2.max_health = data.raw["thruster"]["thruster"].max_health * 1.4
thruster_mk2.minable.result = "thruster-mk2"

thruster_mk2.max_performance.fluid_usage = settings.startup["thruster-upgrades-thruster-mk2-full-storage-fluid-usage-percent"].value / 100
thruster_mk2.max_performance.effectivity = settings.startup["thruster-upgrades-thruster-mk2-full-storage-efficiency-percent"].value / 100
thruster_mk2.fuel_fluid_box.volume = settings.startup["thruster-upgrades-thruster-mk2-storage-volume-units"].value
thruster_mk2.oxidizer_fluid_box.volume = settings.startup["thruster-upgrades-thruster-mk2-storage-volume-units"].value

thruster_mk2.graphics_set.animation = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk2/thruster",
    {
        animation_speed = 0.5,
        frame_count = 64,
        scale = 0.5,
        shift = {0,3}
    }
)

thruster_mk2.integration_patch_render_layer = "floor"
thruster_mk2.integration_patch = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk2/thruster-bckg",
    {
        scale = 0.5,
        shift = {0,3}
    }
)

-- Thruster MK3 entitites

local thruster_mk3_corpse = table.deepcopy(data.raw["corpse"]["thruster-remnants"])
thruster_mk3_corpse.name = "thruster-mk3-remnants"
thruster_mk3_corpse.icon = "__thruster-upgrades__/graphics/icons/thruster-mk3.png"
thruster_mk3_corpse.animation = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk3/thruster-remnants",
    {
      scale = 0.5,
      direction_count = 1,
      line_length = 1,
      shift = {0, 3}
    }
)

local thruster_mk3 = table.deepcopy(data.raw["thruster"]["thruster"])
thruster_mk3.name = "thruster-mk3"
thruster_mk3.icon = "__thruster-upgrades__/graphics/icons/thruster-mk3.png"
thruster_mk3.factoriopedia_simulation =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.1
    game.simulation.camera_position = {0, 2}
    for x = -12, 11, 1 do
      for y = -3, 6 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "empty-space"}}
      end
    end
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNql1bFuwyAQxvF3uRlLPiCOzatEHUhMGiQbLMBVK4t3j5NU6tIh0rdy/G/4LbfReVrdknwoZDbylxgymdNG2X8GOz3egp0dGSq3tObiElVBPozumwzXD0HFT+6VLDH74mN4RPu0YRb0Q6bdg98debEX1yyTLdeY5uYa1zDaZ1LFP32L9QOW91h+xPIOtHvZM2jPmD1j9ozZM2bPoL0E7SVmLzF7idlLzF6C9gq0V5i9wuwVZq8wewXaa9BeY/Yas9eYvcbs38v3q+uLm/dPf8db0JdL+bnw0MlBD8Oh161sdV/rHYnoqQA=",
      position = {0, 0}
    }
    game.surfaces[1].create_entity{name = "thruster-mk3", position = {0, 0}, direction = defines.direction.north}
  ]]
}
thruster_mk3.corpse = "thruster-mk3-remnants"
thruster_mk3.max_health = data.raw["thruster"]["thruster"].max_health * 1.8
thruster_mk3.minable.result = "thruster-mk3"

thruster_mk3.max_performance.fluid_usage = settings.startup["thruster-upgrades-thruster-mk3-full-storage-fluid-usage-percent"].value / 100
thruster_mk3.max_performance.effectivity = settings.startup["thruster-upgrades-thruster-mk3-full-storage-efficiency-percent"].value / 100
thruster_mk3.fuel_fluid_box.volume = settings.startup["thruster-upgrades-thruster-mk3-storage-volume-units"].value
thruster_mk3.oxidizer_fluid_box.volume = settings.startup["thruster-upgrades-thruster-mk3-storage-volume-units"].value

thruster_mk3.graphics_set.animation = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk3/thruster",
    {
        animation_speed = 0.5,
        frame_count = 64,
        scale = 0.5,
        shift = {0,3}
    }
)

thruster_mk3.integration_patch_render_layer = "floor"
thruster_mk3.integration_patch = util.sprite_load(
    "__thruster-upgrades__/graphics/entity/thruster-mk3/thruster-bckg",
    {
        scale = 0.5,
        shift = {0,3}
    }
)

data.extend(
    {
        thruster_mk2_corpse,
        thruster_mk2,
        thruster_mk3_corpse,
        thruster_mk3,
    }
)