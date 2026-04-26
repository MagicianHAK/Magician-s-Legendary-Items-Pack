# Clear the advancment and only continue if the player is wearing the ender cloak
advancement revoke @s only legendaries:use_ender_cloak_ability
execute unless predicate legendaries:wearing_ender_cloak run return fail

# Tag the player raycasting
tag @s add ender_cloak_raycaster

# Max distance of the raycast (number of blocks * 10)
scoreboard players set $enderCloakMaxRaycast ender_cloak_raycast 800

# Starts the raycast
execute anchored eyes positioned ^ ^ ^.1 run function legendaries:ender_cloak/raycast

# Cleanup
tag @s remove ender_cloak_raycaster