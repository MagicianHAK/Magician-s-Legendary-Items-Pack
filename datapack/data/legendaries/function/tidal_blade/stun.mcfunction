effect give @s slowness 5 6 true
effect give @s weakness 5 4 true
effect give @s mining_fatigue 5 4 true
attribute @s jump_strength modifier add legendaries:tidal_blade_stun_jump -10 add_value
attribute @s knockback_resistance modifier add legendaries:tidal_blade_stun_kb 1 add_value
tag @s add tidal_blade_stuned
schedule function legendaries:tidal_blade/clear_stun 5s