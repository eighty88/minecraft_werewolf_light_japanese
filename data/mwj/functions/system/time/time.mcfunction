###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Calculate time every tick
scoreboard players remove #MWL Tick 1
execute if score #MWL Tick matches ..-1 run scoreboard players set #MWL Tick 0

## Calculate time every second
execute if score #MWL Tick matches 0 run function mwj:system/time/second