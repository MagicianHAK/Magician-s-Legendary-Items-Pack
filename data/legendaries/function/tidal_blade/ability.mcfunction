tag @s add tidal_blade_ability
execute as @e[distance=..5,tag=!tidal_blade_ability] at @s run function legendaries:tidal_blade/stun
summon area_effect_cloud ~ ~1 ~ {custom_particle:{type:"falling_water"},Radius:6f,RadiusPerTick:-0.2f}
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 2 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 2
tellraw @s ["",{color:"blue",bold:true,text:"Cripling Tide "},{color:"aqua",text:"is active!"}]
scoreboard players set @s tidal_blade_combo_ability 0
tag @s remove tidal_blade_ability