###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Set Thief
execute if score #MWL AddedRole matches 1.. run scoreboard players add #MWL AddedThief 1
execute if score #MWL AddedRole matches 1.. run scoreboard players remove #MWL AddedRole 1
function mwj:system/setting/decision_role_addition_common/set_scoreboard