###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Set AddedRole3
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run give @p[tag=Host] minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole3",HideFlags:39} 1
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/role_addition_decision_common/selected_role3