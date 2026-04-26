scoreboard players remove $ancientHelmMaxRaycast ancient_helm_raycast 1

particle sonic_boom ~ ~ ~ .5 .5 .5 0 1 force
playsound entity.warden.death master @a ~ ~ ~

execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=3, dy=3, dz=3, tag=!ancient_helm_raycaster, tag=!damaged, type=!item] run function legendaries:ancient_helm/damage

execute if score $ancientHelmMaxRaycast ancient_helm_raycast matches 1.. positioned ^ ^ ^.1 run function legendaries:ancient_helm/raycast