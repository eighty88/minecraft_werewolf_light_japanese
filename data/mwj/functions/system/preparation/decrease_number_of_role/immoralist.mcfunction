###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Decrease immoralist
scoreboard players remove #MWL NumOfImmorals 1
scoreboard players remove #MWL PrevAddedRole 1

execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFoxes matches 1 if score #MWL NumOfImmorals matches 1.. run function mwj:system/preparation/decrease_number_of_role/immoralist