###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Title
title @a times 20 40 20
title @a title ["",{"text":"DRAW","color":"white","bold":true}]

## Display Winner
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  両者 ","color":"white"},{"text":"引き分け","bold":true,"color":"white"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
