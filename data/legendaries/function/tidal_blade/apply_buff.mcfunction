execute store result score @s tidal_blade_buff run random value 1..4

playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2

execute if score @s tidal_blade_buff matches 1 run return run function legendaries:tidal_blade/combo_strenght
execute if score @s tidal_blade_buff matches 2 run return run function legendaries:tidal_blade/combo_speed
execute if score @s tidal_blade_buff matches 3 run return run function legendaries:tidal_blade/combo_insta_health
execute if score @s tidal_blade_buff matches 4 run return run function legendaries:tidal_blade/combo_haste