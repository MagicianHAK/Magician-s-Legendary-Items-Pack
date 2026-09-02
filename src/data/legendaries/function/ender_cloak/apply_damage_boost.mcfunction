attribute @s attack_damage modifier add legendaries:ender_cloak_damage_boost 1.3 add_multiplied_total
tag @s add ender_cloak_damage_boost
schedule function legendaries:ender_cloak/clear_damage_boost 2s
playsound entity.player.teleport master @a ~ ~ ~
particle minecraft:dragon_breath ~ ~1 ~ 0.7 0.7 0.7 .05 150