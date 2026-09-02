# Clears @s cooldown for Frenzy
scoreboard players set @s frenzy_cooldown 0
tag @s remove frenzy_on_cooldown
function legendaries:frenzy/clear_ability_effects
effect clear @s haste
effect clear @s regeneration