###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @p[team=Player,sort=random] run scoreboard players operation @p[scores={CurrentRole=21,MasonPair=0},limit=2,sort=random] MasonPair = #MWL MasonPair

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Increment
execute if score #MWL NumOfRole matches 1.. run scoreboard players add #MWL MasonPair 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/preparation/role_decision/mason_pair