###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Winner is Nobody
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/winner/draw
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0 run function mwj:system/finish/winner/draw

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 1.. run function mwj:system/finish/winner/villager

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 1.. if score #MWL WHITE matches 0 run function mwj:system/finish/winner/werewolf

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 run function mwj:system/finish/winner/fox
execute if score #MWL PURPLE matches 1.. if score #MWL WHITE matches 0 run function mwj:system/finish/winner/fox