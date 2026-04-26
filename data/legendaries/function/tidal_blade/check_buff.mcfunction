scoreboard players operation @s tidal_blade_combo_buff = @s tidal_blade_combo
scoreboard players operation @s tidal_blade_combo_buff %= $tidalBladeHitsForBuff settings
execute if score @s tidal_blade_combo_buff matches 0 run function legendaries:tidal_blade/apply_buff