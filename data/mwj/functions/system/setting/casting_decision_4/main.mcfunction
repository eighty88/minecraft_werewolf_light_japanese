###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:orange_concrete",tag:{Tags:["MWLsetting","AddedLtRed"]}}]}] SelectItem1 0
# scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:blue_concrete",tag:{Tags:["MWLsetting","AddedSage"]}}]}] SelectItem2 0
# scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:red_concrete",tag:{Tags:["MWLsetting","AddedWhWolf"]}}]}] SelectItem3 0
# scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:pink_concrete",tag:{Tags:["MWLsetting","AddedFanatic"]}}]}] SelectItem4 0
# scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:purple_concrete",tag:{Tags:["MWLsetting","AddedImmoral"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/casting_decision_4/selected_little_red
# execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/casting_decision_3/selected_sage
# execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/casting_decision_3/selected_white_wolf
# execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/casting_decision_3/selected_fanatic
# execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/casting_decision_3/selected_immoralist