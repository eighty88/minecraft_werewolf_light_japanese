###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Added Role Number
scoreboard players operation Time AddedRole = Time VILLAGER
scoreboard players remove Time AddedRole 1
scoreboard players set Time DENOMINATOR 2
scoreboard players operation Time AddedRole /= Time DENOMINATOR
execute if score Time NUM matches ..7 run scoreboard players set Time AddedRole 0
execute if score Time AddedRole matches ..-1 run scoreboard players set Time AddedRole 0