###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Detect Gamemode
execute if entity @p[tag=Host] run function mwj:system/finish/reject_game
execute unless entity @p[tag=Host] run function mwj:system/setting/initial_setting/start