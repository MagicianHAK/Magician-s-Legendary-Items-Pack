# If the player holding frenzy is sneaking make it consumable
execute as @a[predicate=legendaries:has_frenzy_in_hand, predicate=legendaries:has_frenzy_in_hotbar, predicate=legendaries:sneaking] run item modify entity @s weapon.mainhand legendaries:frenzy_consumable

# If the player holding frenzy is not make it not consumable
execute as @a[predicate=legendaries:has_frenzy_in_hand, predicate=legendaries:has_frenzy_in_hotbar, predicate=legendaries:not_sneaking] run item modify entity @s weapon.mainhand legendaries:clear_frenzy_consumable