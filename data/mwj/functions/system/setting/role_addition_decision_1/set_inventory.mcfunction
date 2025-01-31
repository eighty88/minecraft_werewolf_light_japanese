###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_wolf
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_madman
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_villager
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_seer
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_medium

## Set scoreboard
scoreboard players operation #MWL AddedWolf = #MWL AddedRole1
scoreboard players operation #MWL AddedMadman = #MWL AddedRole2
scoreboard players operation #MWL AddedVilla = #MWL AddedRole3
scoreboard players operation #MWL AddedSeer = #MWL AddedRole4
scoreboard players operation #MWL AddedMedium = #MWL AddedRole5