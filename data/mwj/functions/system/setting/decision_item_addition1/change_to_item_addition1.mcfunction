###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=host]

## Set Inventory
function mwj:system/setting/decision_item_addition1/item_addition1_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] SelectedPrevPage 0
scoreboard players set @p[tag=host] SelectedStick 0
scoreboard players set @p[tag=host] SelectedTotem 0
scoreboard players set @p[tag=host] SelectedDeath2 0
scoreboard players set @p[tag=host] SelectedPearl 0
scoreboard players set @p[tag=host] SelectedHoe 0
scoreboard players set @p[tag=host] SelectedNextPage 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedReset 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide1 0
scoreboard players set @p[tag=host] SelectedDecide2 0
scoreboard players set @p[tag=host] SelectedDecide3 0
scoreboard players set @p[tag=host] SelectedDecide4 0
scoreboard players set @p[tag=host] SelectedDecide5 0
scoreboard players set @p[tag=host] ThrowItem 0

## Change Mode
scoreboard players set Time GAME 95