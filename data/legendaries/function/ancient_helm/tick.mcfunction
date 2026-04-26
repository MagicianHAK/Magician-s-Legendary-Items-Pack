# Runs all ancient helm related functions that need to run every tick
function legendaries:ancient_helm/stop_sneaking
function legendaries:ancient_helm/cooldown
function legendaries:ancient_helm/apply_resistance

scoreboard players add @a[predicate=legendaries:wearing_ancient_helm] ancient_helm_cooldown 0

execute as @a[predicate=legendaries:sneaking, predicate=legendaries:wearing_ancient_helm] if score @s ancient_helm_sneak_time matches 15.. at @s run function legendaries:ancient_helm/sneaking