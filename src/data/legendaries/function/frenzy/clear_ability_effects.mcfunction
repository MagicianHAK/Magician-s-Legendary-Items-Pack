# Clear the atribute moddifiers Frenzys ability applies
attribute @s attack_damage modifier remove legendaries:frenzy_damage_boost
attribute @s knockback_resistance modifier remove legendaries:frenzy_kb_res
tag @s remove frenzy_ability_active

# Chat alert
tellraw @s [{"bold":true,"color":"gold","text":"Raging Flame"},{"bold":false,"color":"yellow","text":" has subsided."}]