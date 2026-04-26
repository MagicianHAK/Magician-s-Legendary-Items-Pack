tag @s add ancient_helm_raycaster
tag @s add ancient_helm_on_cooldown
scoreboard players set @s ancient_helm_cooldown 1200 

scoreboard players set $ancientHelmMaxRaycast ancient_helm_raycast 1000

execute anchored eyes positioned ^ ^ ^.1 run function legendaries:ancient_helm/raycast

tag @s remove ancient_helm_raycaster
tag @e[tag=damaged] remove damaged