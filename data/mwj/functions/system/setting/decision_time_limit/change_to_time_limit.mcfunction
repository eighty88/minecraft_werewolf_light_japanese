###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Clear Inventory
clear @a[tag=host]

## Set Inventory
function mwj:system/setting/decision_time_limit/time_limit_inventory

## Set Scoreboard
scoreboard players set @a[tag=host] Selected10mins 0
scoreboard players set @a[tag=host] Selected15mins 0
scoreboard players set @a[tag=host] Selected20mins 0
scoreboard players set @a[tag=host] Selected25mins 0
scoreboard players set @a[tag=host] Selected30mins 0
scoreboard players set @a[tag=host] SelectedBarrier 0
scoreboard players set @a[tag=host] SelectedWire 0
scoreboard players set @a[tag=host] SelectedStar 0
scoreboard players set @a[tag=host] Throw10mins 0
scoreboard players set @a[tag=host] Throw15mins 0
scoreboard players set @a[tag=host] Throw20mins 0
scoreboard players set @a[tag=host] Throw25mins 0
scoreboard players set @a[tag=host] Throw30mins 0
scoreboard players set @a[tag=host] ThrowBarrier 0
scoreboard players set @a[tag=host] ThrowWireHook 0
scoreboard players set @a[tag=host] ThrowNetherStar 0

## Change Mode
scoreboard players set Time GAME 92