###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Add a tag
tag @s add TridentThrower

## Set number
execute at @p[tag=TridentThrower] as @e[type=minecraft:trident,nbt={Trident:{id:"minecraft:trident",tag:{Tags:"MWLitem"}}},distance=0..5] unless score @s NUM matches 1.. run scoreboard players operation @s NUM = @p[tag=TridentThrower] NUM

## Set scoreboard
scoreboard players reset @p[tag=TridentThrower] ThrowTrident

## Remove a tag
tag @s remove TridentThrower