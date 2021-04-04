###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Minecraft 1.15
replaceitem entity @p[tag=Host] inventory.0 minecraft:honeycomb_block{Tags:"Ver"}
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:honeycomb_block",Count:1b,tag:{Tags:"Ver"}}]}] run scoreboard players set #MWL Version 15