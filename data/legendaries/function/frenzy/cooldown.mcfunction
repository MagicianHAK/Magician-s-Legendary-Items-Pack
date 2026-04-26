# Reduce players cooldowns by 1 tick
execute as @a[tag=frenzy_on_cooldown] run scoreboard players remove @s frenzy_cooldown 1

# Clears players effects from the ability
execute as @a[tag=frenzy_on_cooldown] if score @s frenzy_cooldown matches 1800 run function legendaries:frenzy/clear_ability_effects

# Checks if the cooldown is over
execute as @a[tag=frenzy_on_cooldown] if score @s frenzy_cooldown matches 0 at @s run function legendaries:frenzy/cooldown_end