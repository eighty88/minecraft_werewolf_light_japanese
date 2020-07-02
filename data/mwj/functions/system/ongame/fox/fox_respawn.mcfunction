###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detected Respawn
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/bow
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/arrow
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/torch

## Detected Unspawn
scoreboard players set @s[scores={RESPAWN=0}] DEATH 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s ROLE_OF_NUM 2