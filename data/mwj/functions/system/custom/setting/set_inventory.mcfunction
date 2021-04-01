## Replace Inventory
execute if score #MWL SetQuartz matches 0 run loot replace entity @p[tag=Host] inventory.1 loot mwj:item/custom/quartz
execute if score #MWL SetQuartz matches 1 run loot replace entity @p[tag=Host] inventory.1 loot mwj:item/custom/quartz_enchanted
execute if score #MWL SetHaunting matches 0 run loot replace entity @p[tag=Host] inventory.2 loot mwj:item/custom/totem_of_undying
execute if score #MWL SetHaunting matches 1 run loot replace entity @p[tag=Host] inventory.2 loot mwj:item/custom/totem_of_undying_enchanted
execute if score #MWL SetDrunk matches 0 run loot replace entity @p[tag=Host] inventory.3 loot mwj:item/custom/milk_bucket
execute if score #MWL SetDrunk matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mwj:item/custom/milk_bucket_enchanted