###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Detect Gamemode
execute if entity @p[tag=Host] run function mwj:system/finish/reject_game
execute unless entity @p[tag=Host] run function mwj:system/setting/initial_setting/start