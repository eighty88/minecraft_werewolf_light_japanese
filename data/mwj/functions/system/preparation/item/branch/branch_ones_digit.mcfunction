###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Store Valiable
scoreboard players set #MWL TEMP_DIGIT 0

## Branch ones digit
execute if score #MWL AddedStick matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/stick
execute if score #MWL AddedStick matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTotem matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/totem_of_undying
execute if score #MWL AddedTotem matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedDeath matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/potion_death
execute if score #MWL AddedDeath matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedPearl matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/ender_pearl
execute if score #MWL AddedPearl matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoe matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/diamond_hoe
execute if score #MWL AddedHoe matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedElytra matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/elytra
execute if score #MWL AddedElytra matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSnowball matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/snowball
execute if score #MWL AddedSnowball matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedInvis matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/potion_invisible
execute if score #MWL AddedInvis matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSpeed matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/potion_speed
execute if score #MWL AddedSpeed matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedJump matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/potion_jump
execute if score #MWL AddedJump matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTrident matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/trident
execute if score #MWL AddedTrident matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedConduit matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/conduit
execute if score #MWL AddedConduit matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedCrossbow matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/crossbow
execute if score #MWL AddedCrossbow matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoneyBlock matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/honey_block
execute if score #MWL AddedHoneyBlock matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedLantern matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/lantern
execute if score #MWL AddedLantern matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedVines matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/preparation/item/special/twisting_vines
execute if score #MWL AddedVines matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedFire matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/custom/preparation/item/special/fire_crossbow
execute if score #MWL AddedFire matches 1 run scoreboard players add #MWL TEMP_DIGIT 1