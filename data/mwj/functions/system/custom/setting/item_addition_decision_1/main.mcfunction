###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:crossbow",Count:1b,tag:{Tags:["MWLitem"],CustomModelData:4}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:firework_rocket",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem3 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/custom/setting/item_addition_decision_1/selected_drone
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/custom/setting/item_addition_decision_1/selected_fire
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/custom/setting/item_addition_decision_1/selected_homing
