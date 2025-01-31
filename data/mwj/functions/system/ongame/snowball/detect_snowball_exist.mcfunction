###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Add a tag
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:["MWLitem"]}}}] if score @s NumberOfSnowball = @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] NumberOfSnowball run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] run function mwj:system/ongame/snowball/explode_flashbang