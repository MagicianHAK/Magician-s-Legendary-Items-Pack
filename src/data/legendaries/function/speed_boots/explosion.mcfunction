# Tag the player
tag @s add exploding

# Deal the damage
$execute as @e[distance=..5, type=!item, tag=!exploding] run damage @s $(damage) explosion

# Make the player immune to explosion kb
attribute @s explosion_knockback_resistance modifier add legendaries:speed_boots_kb_res 1 add_value
schedule function legendaries:speed_boots/clear_kb_res 3t

# Deal the kb
summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-0.5,0.0]}
summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-0.5,0.0]}

# Spawn the particles
particle explosion ~ ~ ~ 1.5 1.5 1.5 0 50
$particle soul_fire_flame ~ ~ ~ 0 0 0 .2 $(damage)
$particle soul_fire_flame ~ ~ ~ 0 0 0 .2 $(damage)

# Play sound effect
playsound entity.generic.explode master @a ~ ~ ~

# Clear the tag
tag @s remove exploding

# Display damage if the setting is on
$execute if score $speedBootsDisplayDamage settings matches 1 run tellraw @s [{"bold":true,"color":"red","text":"☀"},{"bold":false,"color":"red","text":" Your Ability Dealt $(damage) Damage "},{"bold":true,"color":"red","text":"☀"}]
