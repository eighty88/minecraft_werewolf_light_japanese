###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Detect setting lantern
function mwj:system/ongame/soul_lantern/give_soul_lantern
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1]