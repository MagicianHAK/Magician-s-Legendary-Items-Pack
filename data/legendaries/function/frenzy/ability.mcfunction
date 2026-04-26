# Cleanup
advancement revoke @s only legendaries:use_frenzy_ability

# Triggers Frenzys ability if its off cooldown
execute if score @s frenzy_cooldown matches 0 run return run function legendaries:frenzy/ability_effects

# Says how long the cooldown is if its on cooldown
function legendaries:frenzy/display_cooldown