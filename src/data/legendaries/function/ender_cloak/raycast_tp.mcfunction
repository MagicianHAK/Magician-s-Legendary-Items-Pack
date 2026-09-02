# Tps the raycasting player behind the target
execute at @s anchored eyes positioned ^ ^ ^-1 run tp @a[tag=ender_cloak_raycaster] ~ ~ ~ facing entity @s

execute as @a[tag=ender_cloak_raycaster] run function legendaries:ender_cloak/apply_damage_boost