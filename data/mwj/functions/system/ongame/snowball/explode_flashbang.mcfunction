###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Give effect
execute at @s run effect give @a[team=Player,scores={DeathCount=0},distance=..3] minecraft:blindness 20 0 true

## Kill area_effect_cloud
kill @s