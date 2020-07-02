###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectPrevPage 0
scoreboard players set @p[tag=Host] SelectNextPage 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectAllDel 0
scoreboard players set @p[tag=Host] SelectAllSet 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectItem1 0
scoreboard players set @p[tag=Host] SelectItem2 0
scoreboard players set @p[tag=Host] SelectItem3 0
scoreboard players set @p[tag=Host] SelectItem4 0
scoreboard players set @p[tag=Host] SelectItem5 0
scoreboard players set @p[tag=Host] SelectDecide1 0
scoreboard players set @p[tag=Host] SelectDecide2 0
scoreboard players set @p[tag=Host] SelectDecide3 0
scoreboard players set @p[tag=Host] SelectDecide4 0
scoreboard players set @p[tag=Host] SelectDecide5 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Set items in mode
execute if score Time GAME matches 90 run scoreboard players set Time GAME 95
execute if score Time GAME matches 95 run function mwj:system/setting/decision_item_addition1/set_inventory
execute if score Time GAME matches 96 run function mwj:system/setting/decision_item_addition2/set_inventory
execute if score Time GAME matches 97 run function mwj:system/setting/decision_item_addition3/set_inventory

## Set items
replaceitem entity @p[tag=Host] inventory.9 minecraft:white_banner{display:{Name:"\"\\u00A7r\\u00A7c前へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:white_banner{display:{Name:"\"\\u00A7r\\u00A7c次へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.21 minecraft:map{display:{Name:"\"\\u00A7r\\u00A7e全選択解除\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.23 minecraft:filled_map{display:{Name:"\"\\u00A7r\\u00A7e全選択\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

execute if score Time AddedItem1 matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r\\u00A7a選択済み\""},HideFlags:39} 1
execute if score Time AddedItem2 matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r\\u00A7a選択済み\""},HideFlags:39} 1
execute if score Time AddedItem3 matches 1 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r\\u00A7a選択済み\""},HideFlags:39} 1
execute if score Time AddedItem4 matches 1 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r\\u00A7a選択済み\""},HideFlags:39} 1
execute if score Time AddedItem5 matches 1 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r\\u00A7a選択済み\""},HideFlags:39} 1