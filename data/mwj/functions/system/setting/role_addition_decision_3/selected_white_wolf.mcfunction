###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set White Wolf
execute if score #MWL AddedRole matches 1.. run scoreboard players add #MWL AddedWhWolf 1
execute if score #MWL AddedRole matches 1.. run scoreboard players remove #MWL AddedRole 1
function mwj:system/setting/role_addition_decision_common/set_inventory