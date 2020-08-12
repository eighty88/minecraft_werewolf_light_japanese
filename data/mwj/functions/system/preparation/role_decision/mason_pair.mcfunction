###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @r[team=Player] run scoreboard players operation @r[scores={CurrentRole=21,MasonPair=0},limit=2] MasonPair = #MWL MasonPair

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Increment
execute if score #MWL NumOfRole matches 1.. run scoreboard players add #MWL MasonPair 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/preparation/role_decision/mason_pair