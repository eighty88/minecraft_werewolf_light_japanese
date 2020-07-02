###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Store Valiable
scoreboard players set Time TEMP_DIGIT 0

## Branch ones digit
execute if score Time AddedStick matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/stick
execute if score Time AddedStick matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedTotem matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/totem
execute if score Time AddedTotem matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedDeath2 matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_death2
execute if score Time AddedDeath2 matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedPearl matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/pearl
execute if score Time AddedPearl matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedHoe matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/hoe
execute if score Time AddedHoe matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedElytra matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/elytra
execute if score Time AddedElytra matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedSnowball matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/snowball
execute if score Time AddedSnowball matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedInvis matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_invisible
execute if score Time AddedInvis matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedSpeed matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_speed
execute if score Time AddedSpeed matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedJump matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_jump
execute if score Time AddedJump matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedTrident matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/trident
execute if score Time AddedTrident matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedConduit matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/conduit
execute if score Time AddedConduit matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedCrossbow matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/crossbow
execute if score Time AddedCrossbow matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedHoneyBlock matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/honey_block
execute if score Time AddedHoneyBlock matches 1 run scoreboard players add Time TEMP_DIGIT 1

execute if score Time AddedLantern matches 1 if score Time ONES_DIGIT >= Time TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/soul_lantern
execute if score Time AddedLantern matches 1 run scoreboard players add Time TEMP_DIGIT 1