###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set AddedRole2
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run loot give @p[tag=Host] loot mwj:setting/role_addition/nether_star_role2
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/casting_decision_common/selected_role2