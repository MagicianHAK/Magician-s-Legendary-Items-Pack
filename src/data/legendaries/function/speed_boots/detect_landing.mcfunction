# Tags in air players
execute as @a[predicate=legendaries:in_air, predicate=legendaries:wearing_speed_boots] run tag @s add in_air

# Detects when a in air player lands and checks if the fall was big enough
execute as @a[tag=in_air, predicate=legendaries:on_ground] at @s if score @s fall_distance >= $speedBootsMinFall settings run function legendaries:speed_boots/handle_landing

# Cleanup
execute as @a[tag=in_air, predicate=legendaries:on_ground] run scoreboard players set @s fall_distance 0
execute as @a[tag=in_air, predicate=legendaries:on_ground] run tag @s remove in_air

