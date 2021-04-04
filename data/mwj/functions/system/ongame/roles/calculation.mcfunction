###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Calculate Scoreboard
scoreboard players operation @s TargetOfRole = @s TurnPageNum
scoreboard players operation @s TargetOfRole *= #MWL 10
scoreboard players operation @s TargetOfRole += @s RoleTrigger
