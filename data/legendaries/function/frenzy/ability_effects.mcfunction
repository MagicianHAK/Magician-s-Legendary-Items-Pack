# Puts the ability on cooldown
scoreboard players add @s frenzy_cooldown 2400
tag @s add frenzy_on_cooldown
tag @s add frenzy_ability_active

# Applys buffs (cleared in cooldown function)
effect give @s haste 30 3 true
effect give @s regeneration 30 1 true
attribute @s attack_damage modifier add legendaries:frenzy_damage_boost 3 add_value
attribute @s knockback_resistance modifier add legendaries:frenzy_kb_res 1 add_value

# Sound effects
playsound item.totem.use master @a ~ ~ ~ 1 .3

# Particles
particle flame ~ ~.5 ~ 0 0 0 .2 600
particle flash{color:[1,1,0,0]} ~ ~1 ~ .2 .2 .2 0 10
particle small_flame ~ ~1 ~ 0.3 1 0.3 0.1 50

# Chat alert
tellraw @s [{"bold":true,"color":"gold","text":"Raging Flame"},{"bold":false,"color":"yellow","text":" active for the next 30 seconds!"}]