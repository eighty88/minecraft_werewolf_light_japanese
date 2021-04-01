## Detect Select Item
scoreboard players set @p[tag=Host] Quartz 1
scoreboard players set @p[tag=Host] Haunting 1
scoreboard players set @p[tag=Host] Drunk 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:quartz"}]}] Quartz 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:totem_of_undying"}]}] Haunting 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:milk_bucket"}]}] Drunk 0

## Function Each Mode
execute as @p[tag=Host,scores={Quartz=1}] run function mwj:system/custom/setting/set_quartz
execute as @p[tag=Host,scores={Haunting=1}] run function mwj:system/custom/setting/set_haunting
execute as @p[tag=Host,scores={Drunk=1}] run function mwj:system/custom/setting/set_drunk