###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

execute if score #MWL GameMode matches 1 run function mwj:system/finish/decide_winner/normal_wolf
execute if score #MWL GameMode matches 2 run function mwj:system/finish/decide_winner/two_alive
execute if score #MWL GameMode matches 3 run function mwj:system/finish/decide_winner/annihilation