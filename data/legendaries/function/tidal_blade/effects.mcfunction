# Apply effects to players holding Tidal Blade
execute as @a[predicate=legendaries:has_tidal_blade_in_hotbar] run function legendaries:tidal_blade/apply_effects
execute as @a[predicate=legendaries:has_tidal_blade_in_hand] run function legendaries:tidal_blade/apply_effects

# Clear hp boost from players not holding Frenzy
execute as @a[predicate=!legendaries:has_tidal_blade_in_hotbar, predicate=!legendaries:has_tidal_blade_in_hand] run attribute @s max_health modifier remove legendaries:tidal_blade_hp_boost





