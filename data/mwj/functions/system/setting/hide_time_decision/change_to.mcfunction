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
function mwj:system/setting/hide_time_decision/set_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] Select015secs 0
scoreboard players set @p[tag=Host] Select030secs 0
scoreboard players set @p[tag=Host] Select060secs 0
scoreboard players set @p[tag=Host] Select090secs 0
scoreboard players set @p[tag=Host] Select120secs 0
scoreboard players set @p[tag=Host] Select180secs 0
scoreboard players set @p[tag=Host] Select300secs 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set #MWL Phase 81