# Runs all frenzy related functions that need to run every tick
function legendaries:frenzy/effects
function legendaries:frenzy/cooldown

# Makes the ability only work when sneaking
function legendaries:frenzy/apply_consumable

# Adds all player with Frenzy to the scoreboard
execute as @a[predicate=legendaries:has_frenzy_in_hand] run scoreboard players add @s frenzy_cooldown 0

# Particles during ability
execute as @a[tag=frenzy_ability_active] at @s run particle small_flame ~ ~1 ~ 0.1 0.1 0.1 0.05 1
execute as @a[tag=frenzy_ability_active] at @s run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.05 1