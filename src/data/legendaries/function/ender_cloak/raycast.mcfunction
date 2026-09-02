# Removes 1 from the max distance for every .1 blocks traveled
scoreboard players remove $enderCloakMaxRaycast ender_cloak_raycast 1

# Checks if the raycast hit a entity if it did end the raycast and tp the raycaster
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0, tag=!ender_cloak_raycaster, type=!item] run return run function legendaries:ender_cloak/raycast_tp

# Runs the next step of the raycast if it has not hit its limit and has not hit a block
execute if block ~ ~ ~ #minecraft:replaceable if score $enderCloakMaxRaycast ender_cloak_raycast matches 1.. positioned ^ ^ ^.1 run function legendaries:ender_cloak/raycast