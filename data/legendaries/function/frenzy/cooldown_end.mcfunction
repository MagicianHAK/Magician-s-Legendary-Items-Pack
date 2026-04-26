# Takes Frenzys ability off cooldown
tag @s remove frenzy_on_cooldown

# Chat alert
tellraw @s [{"bold":true,"color":"gold","text":"Raging Flame"},{"bold":false,"color":"yellow","text":" is ready!"}]

# Sound effect
playsound event.mob_effect.bad_omen master @s ~ ~ ~ 1 2