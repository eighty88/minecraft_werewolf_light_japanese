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
function mwj:system/setting/decision_game_time/game_time_inventory

## Set Scoreboard
scoreboard players set @p[tag=host] ThrowItem 0
scoreboard players set @p[tag=host] Selected05mins 0
scoreboard players set @p[tag=host] Selected10mins 0
scoreboard players set @p[tag=host] Selected15mins 0
scoreboard players set @p[tag=host] Selected20mins 0
scoreboard players set @p[tag=host] Selected25mins 0
scoreboard players set @p[tag=host] Selected30mins 0
scoreboard players set @p[tag=host] Selected60mins 0
scoreboard players set @p[tag=host] SelectedCancel 0
scoreboard players set @p[tag=host] SelectedOkay 0
scoreboard players set @p[tag=host] SelectedDecide 0

## Change Mode
scoreboard players set Time GAME 93