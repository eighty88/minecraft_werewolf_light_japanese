###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Snowball
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:snow_block"}]}] run function mwj:system/ongame/snowball/clear_snowball
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:["MWLitem"]}}}] run function mwj:system/ongame/snowball/detect_snowball_move
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,scores={NumberOfSnowball=1..}] run function mwj:system/ongame/snowball/detect_snowball_exist