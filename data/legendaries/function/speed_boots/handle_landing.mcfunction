# Calculate damage based on fall distance and store it
scoreboard players operation @s fall_distance *= $speedBootsDamageMult settings
scoreboard players operation @s fall_distance /= $speedBootsDamageMultScale settings
execute store result storage legendaries:explosion_damage damage int 1 run scoreboard players get @s fall_distance

# Run explosion with the stored damage
function legendaries:speed_boots/explosion with storage legendaries:explosion_damage

# Cleanup
data remove storage legendaries:explosion_damage damage

