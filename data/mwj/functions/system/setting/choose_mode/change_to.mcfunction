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
function mwj:system/setting/choose_mode/set_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] ChosenCasting 0
scoreboard players set @p[tag=Host] ChosenDummyRole 0
scoreboard players set @p[tag=Host] ChosenHideTime 0
scoreboard players set @p[tag=Host] ChosenGlowTime 0
scoreboard players set @p[tag=Host] ChosenGameTime 0
scoreboard players set @p[tag=Host] ChosenGameMode 0
scoreboard players set @p[tag=Host] ChosenItemAdd 0
scoreboard players set @p[tag=Host] ChosenRoleAdd 0
scoreboard players set @p[tag=Host] ChosenCastSet 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0

function mwj:system/custom/setting/change_to

## Change Mode
scoreboard players set #MWL Phase 80