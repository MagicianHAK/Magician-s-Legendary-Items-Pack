execute if score @s ancient_helm_sneak_time matches 0 run return fail

execute if score @s ancient_helm_sneak_time matches 100.. at @s run function legendaries:ancient_helm/start_raycast

scoreboard players set @s ancient_helm_sneak_time 0