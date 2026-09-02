# Applys glowing to all player that have a legenday item anywhere in their inventory
execute as @a[predicate=legendaries:has_legendary_inventory] run effect give @s glowing 1 0 true
execute as @a[predicate=legendaries:has_legendary_armor] run effect give @s glowing 1 0 true
execute as @a[predicate=legendaries:has_legendary_offhand] run effect give @s glowing 1 0 true