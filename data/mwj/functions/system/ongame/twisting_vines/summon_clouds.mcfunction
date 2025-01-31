###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Summon clouds
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TwistingVinesBegin"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}

## Not setblock twisting vines
execute unless block ~ ~ ~ minecraft:air run kill @e[type=minecraft:area_effect_cloud,tag=TwistingVinesBegin,sort=nearest,limit=1]
execute unless block ~ ~ ~ minecraft:air run loot spawn ~ ~ ~ loot mwj:item/special/twisting_vines

## Setblock twisting vines
scoreboard players set @s TwistVinesCount 0
execute if block ~ ~ ~ minecraft:air run function mwj:system/ongame/twisting_vines/setblock_vines

## Kill item
kill @s