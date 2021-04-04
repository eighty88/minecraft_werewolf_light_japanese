###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Reset twisting vines
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=TwistingVinesEnd] TwistVinesCount 0
execute as @e[type=minecraft:area_effect_cloud,tag=TwistingVinesEnd] at @s align xyz run function mwj:system/finish/reset_world/twisting_vines
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:twisting_vines"}}]