# Set up scoreboards
scoreboard objectives add fall_distance dummy
scoreboard objectives add settings dummy
scoreboard objectives add frenzy_cooldown dummy
scoreboard objectives add frenzy_cooldown_seconds dummy
scoreboard objectives add frenzy_cooldown_seconds_old dummy
scoreboard objectives add ender_cloak_raycast dummy
scoreboard objectives add ancient_helm_raycast dummy
scoreboard objectives add ancient_helm_sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add ancient_helm_range dummy
scoreboard objectives add ancient_helm_damage dummy
scoreboard objectives add ancient_helm_cooldown dummy
scoreboard objectives add tidal_blade_combo dummy
scoreboard objectives add tidal_blade_combo_buff dummy
scoreboard objectives add tidal_blade_combo_ability dummy
scoreboard objectives add tidal_blade_combo_timer dummy
scoreboard objectives add tidal_blade_combo_ability_timer dummy
scoreboard objectives add tidal_blade_buff dummy
scoreboard objectives add earthen_belt_sneak_time minecraft.custom:minecraft.sneak_time

# For scaling cooldowns correctly
scoreboard players set $ticksPerSecond settings 20

# The amount of hits in a combo with tidal blade to trigger a buff
scoreboard players set $tidalBladeHitsForBuff settings 4

# The amount of hits in a combo with tidal blade to trigger the ablility
scoreboard players set $tidalBladeHitsForAbility settings 12

# Max range for ancient helm glowing
scoreboard players set $ancientHelmMaxGlowingRange settings 100

# Used to get the distance the ancient helm should give glowing (seconds crouched * this = range)
scoreboard players set $ancientHelmGlowingScale settings 3

# Max distance ender cloak ability works from (set in raycast function)
scoreboard players add $enderCloakMaxRaycast ender_cloak_raycast 0

# Max distance ancient helm ability works from (set later)
scoreboard players add $ancientHelmMaxRaycast ancient_helm_raycast 0

# Damage Mult is divided by scale so 25 would be 2.5 damage per block fallen
scoreboard players set $speedBootsDamageMult settings 25
scoreboard players set $speedBootsDamageMultScale settings 10

# Minimum fall needed to trigger speed boots explosion
scoreboard players set $speedBootsMinFall settings 5

# If the speed boots explosion should display damage numbers (0 = false, 1 = true)
scoreboard players set $speedBootsDisplayDamage settings 0

tellraw @a ["",{color:"gold",bold:true,text:"Magician's Legendary Items"},{color:"yellow",text:" Pack has loaded!"}]