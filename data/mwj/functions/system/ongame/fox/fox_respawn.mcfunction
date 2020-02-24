###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Detected Respawn
execute if score @s RESPAWN matches 1.. as @s run function mwj:system/preparation/item/common/bow
execute if score @s RESPAWN matches 1.. as @s run function mwj:system/preparation/item/common/arrow
execute if score @s RESPAWN matches 1.. as @s run function mwj:system/preparation/item/common/torch

## Detected Unspawn
execute if score @s RESPAWN matches 0 run scoreboard players set @s DEATH 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s ROLE_OF_NUM 2