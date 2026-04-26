# Convert the cooldown from tick to seconds
scoreboard players operation @s frenzy_cooldown_seconds = @s frenzy_cooldown
scoreboard players operation @s frenzy_cooldown_seconds /= $ticksPerSecond settings

# Stop the function if the cooldown is the same as the last one displayed (to prevent spam)
execute if score @s frenzy_cooldown_seconds = @s frenzy_cooldown_seconds_old run return fail

# Shows the cooldown in chat
tellraw @s [{"bold":true,"color":"gold","text":"Raging Flame"},{"bold":false,"color":"yellow","text":" is on cooldown for "},{"bold":false,"color":"yellow","score":{"name":"@s","objective":"frenzy_cooldown_seconds"}},{"bold":false,"color":"yellow","text":" seconds."}]

# Saves the cooldown as old cooldown to be used later (to prevent spam)
scoreboard players operation @s frenzy_cooldown_seconds_old = @s frenzy_cooldown_seconds