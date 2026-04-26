# Toggles if it should display speed boots explosion damage
execute if score $speedBootsDisplayDamage settings matches 0 run return run scoreboard players set $speedBootsDisplayDamage settings 1
execute if score $speedBootsDisplayDamage settings matches 1 run scoreboard players set $speedBootsDisplayDamage settings 0
