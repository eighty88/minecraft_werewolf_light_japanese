###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Process
execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 2
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 3

execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=1}] NUM
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=2}] NUM