###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/game_mode_decision/set_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectNormalWolf 0
scoreboard players set @p[tag=Host] SelectTwoAlive 0
scoreboard players set @p[tag=Host] SelectAnnihilate 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set #MWL Phase 84