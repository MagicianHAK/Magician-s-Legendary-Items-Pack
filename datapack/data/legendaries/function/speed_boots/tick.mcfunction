# Runs all speed boot related functions that need to run every tick
function legendaries:speed_boots/apply_speed
function legendaries:speed_boots/track_fall_distance
function legendaries:speed_boots/detect_landing

# Falling Particles
execute as @a[predicate=legendaries:wearing_speed_boots] at @s if score @s fall_distance >= $speedBootsMinFall settings run particle end_rod ~ ~ ~ .3 .3 .3 0 10
execute as @a[predicate=legendaries:wearing_speed_boots] at @s run particle end_rod ~ ~ ~ .2 0 .2 0 1