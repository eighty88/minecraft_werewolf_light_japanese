###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Seer
execute if score Time AddedRole matches 1.. run scoreboard players add Time AddedSeer 1
execute if score Time AddedRole matches 1.. run scoreboard players remove Time AddedRole 1
function mwj:system/setting/decision_role_addition/change_to_role_addition