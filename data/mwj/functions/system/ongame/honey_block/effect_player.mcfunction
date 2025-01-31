###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Add a tag
tag @s add DetectPlayer

## Give effect
execute at @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] as @a[team=Player,scores={DeathCount=0},distance=..4] unless score @s NumOfPlayers = @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] NumOfPlayers run effect give @s minecraft:slowness 1 2 false

## Remove a tag
tag @s remove DetectPlayer