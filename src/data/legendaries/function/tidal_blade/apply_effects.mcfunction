# Apply the permanent effets from Tidal Blade
execute unless predicate legendaries:has_regen run effect give @s regeneration 2 1 true
effect give @s dolphins_grace 1 0 true
attribute @s max_health modifier add legendaries:tidal_blade_hp_boost 4 add_value