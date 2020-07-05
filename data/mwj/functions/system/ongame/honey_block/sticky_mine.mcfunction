###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add a tag
tag @s add DetectPlayer

## Give effect
execute at @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] as @a[team=Player,scores={DEATH=0},distance=..4] unless score @s NUM = @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] NUM run effect give @s minecraft:slowness 1 2 false

## Remove a tag
tag @s remove DetectPlayer