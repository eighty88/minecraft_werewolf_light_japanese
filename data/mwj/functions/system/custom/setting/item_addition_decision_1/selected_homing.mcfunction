###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set Stick - Item1
scoreboard players operation #MWL TmpAdded = #MWL AddedItem3
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem3 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem3 1
function mwj:system/setting/item_addition_decision_common/set_inventory