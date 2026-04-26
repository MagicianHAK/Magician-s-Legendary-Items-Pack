# Apply effects to players holding Frenzy
execute as @a[predicate=legendaries:has_frenzy_in_hotbar] run function legendaries:frenzy/apply_effects
execute as @a[predicate=legendaries:has_frenzy_in_hand] run function legendaries:frenzy/apply_effects

# Clear hp boost from players not holding Frenzy
execute as @a[predicate=!legendaries:has_frenzy_in_hotbar, predicate=!legendaries:has_frenzy_in_hand] run attribute @s max_health modifier remove legendaries:frenzy_hp_boost





