###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Set the Role
execute if score #MWL NumOfRoles matches 1.. as @r[team=Player] run scoreboard players set @r[scores={CurrentRole=0},team=Player] CurrentRole 27

## Decrement value by 1
scoreboard players remove #MWL NumOfRoles 1

## Repeat
execute if score #MWL NumOfRoles matches 1.. run function mwj:system/preparation/decision_role/sage_decision