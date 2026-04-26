execute as @a[tag=ancient_helm_on_cooldown] run scoreboard players remove @s ancient_helm_cooldown 1

execute as @a[tag=ancient_helm_on_cooldown] if score @s ancient_helm_cooldown matches 0 run tellraw @s ["",{color:"dark_aqua",bold:true,text:"Eldritch Shriek"},{color:"aqua",text:" has recharged!"}]
execute as @a[tag=ancient_helm_on_cooldown] if score @s ancient_helm_cooldown matches 0 run tag @s remove ancient_helm_on_cooldown