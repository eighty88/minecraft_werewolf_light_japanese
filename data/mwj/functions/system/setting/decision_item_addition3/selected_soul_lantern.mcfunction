###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Soul lantern - Item4
scoreboard players operation #MWL TmpAdded = #MWL AddedItem5
execute if score #MWL TmpAdded matches 1 run scoreboard players set #MWL AddedItem5 0
execute if score #MWL TmpAdded matches 0 run scoreboard players set #MWL AddedItem5 1
function mwj:system/setting/decision_item_addition_common/set_scoreboard