###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Process the timer system
function mwj:system/time/time

## Remove Entity
function mwj:system/preparation/set_entity

## Prepare Initially
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/preparation/just_before

## Reset Scoreboard
execute if score #MWL Phase matches 0 run function mwj:system/finish/error_game_player