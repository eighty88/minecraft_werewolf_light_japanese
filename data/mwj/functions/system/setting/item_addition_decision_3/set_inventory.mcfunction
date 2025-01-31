###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/trident
loot replace entity @p[tag=Host] inventory.12 loot mwj:item/special/conduit
loot replace entity @p[tag=Host] inventory.13 loot mwj:item/special/crossbow
replaceitem entity @p[tag=Host] inventory.14 minecraft:air 1
execute if score #MWL Version matches 15.. run loot replace entity @p[tag=Host] inventory.14 loot mwj:item/special/honey_block
replaceitem entity @p[tag=Host] inventory.15 minecraft:air 1
execute if score #MWL Version matches 16.. run loot replace entity @p[tag=Host] inventory.15 loot mwj:item/special/lantern

## Set scoreboard
scoreboard players operation #MWL AddedTrident = #MWL AddedItem1
scoreboard players operation #MWL AddedConduit = #MWL AddedItem2
scoreboard players operation #MWL AddedCrossbow = #MWL AddedItem3
scoreboard players operation #MWL AddedHoneyBlock = #MWL AddedItem4
scoreboard players operation #MWL AddedLantern = #MWL AddedItem5