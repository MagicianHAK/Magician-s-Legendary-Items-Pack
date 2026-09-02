execute if score @s ancient_helm_cooldown matches 1.. run return fail

effect give @s blindness 1 0 true
playsound entity.warden.angry master @a ~ ~ ~
particle minecraft:sculk_charge_pop ~ ~1 ~ .5 .5 .5 .05 10

execute unless score @s ancient_helm_sneak_time matches 20.. run return fail

execute if score @s ancient_helm_sneak_time matches 100 run tellraw @s ["",{color:"dark_aqua",bold:true,text:"Eldritch Shriek"},{color:"aqua",text:" is ready!"}]

scoreboard players operation @s ancient_helm_range = @s ancient_helm_sneak_time
scoreboard players operation @s ancient_helm_range /= $ticksPerSecond settings
scoreboard players operation @s ancient_helm_range *= $ancientHelmGlowingScale settings
scoreboard players operation @s ancient_helm_range < $ancientHelmMaxGlowingRange settings
execute store result storage legendaries:glow_range range int 1 run scoreboard players get @s ancient_helm_range

function legendaries:ancient_helm/glowing with storage legendaries:glow_range
