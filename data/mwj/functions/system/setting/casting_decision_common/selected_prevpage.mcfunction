###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if score #MWL Version matches ..14 if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 97
execute if score #MWL Version matches 15.. if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 98

execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision_4/set_added
function mwj:system/setting/casting_decision_common/set_inventory