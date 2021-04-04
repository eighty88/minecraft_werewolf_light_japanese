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
title @a title ["",{"text":"VILLAGER","color":"green","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"green","bold":true}]

## Display Winner
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"村人陣営","bold":true,"color":"green"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 0
scoreboard players set #MWL WINNER 2
