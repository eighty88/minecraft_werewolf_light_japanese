###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 90

execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision_1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision_2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision_3/set_added
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision_4/set_added
function mwj:system/setting/role_addition_decision_common/set_inventory