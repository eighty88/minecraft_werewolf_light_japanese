###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Detected Respawn
loot replace entity @s[scores={RespawnTime=1..}] hotbar.0 3 loot mwj:item/common

## Detected Unspawn
scoreboard players set @s[scores={RespawnTime=0}] DeathCount 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s RoleOfNum 2