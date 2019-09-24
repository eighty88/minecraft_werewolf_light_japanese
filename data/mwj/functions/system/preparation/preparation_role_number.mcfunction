###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Decision Role Breakdown of Wolf
scoreboard players operation Time WOLF = Time NUM
scoreboard players add Time WOLF 5
scoreboard players set Time DENOMINATOR 5
scoreboard players operation Time WOLF /= Time DENOMINATOR
execute if score Time WOLF matches ..-1 run scoreboard players set Time WOLF 0

## Decision Role Breakdown of Madman
scoreboard players operation Time MADMAN = Time NUM
scoreboard players remove Time MADMAN 1
scoreboard players set Time DENOMINATOR 6
scoreboard players operation Time MADMAN /= Time DENOMINATOR
execute if score Time MADMAN matches ..-1 run scoreboard players set Time MADMAN 0

## Decision Role Breakdown of Seer
scoreboard players operation Time SEER = Time NUM
scoreboard players add Time SEER 5
scoreboard players set Time DENOMINATOR 10
scoreboard players operation Time SEER /= Time DENOMINATOR
execute if score Time SEER matches ..-1 run scoreboard players set Time SEER 0

## Decision Role Breakdown of Medium
scoreboard players operation Time MEDIUM = Time NUM
scoreboard players add Time MEDIUM 4
scoreboard players set Time DENOMINATOR 10
scoreboard players operation Time MEDIUM /= Time DENOMINATOR
execute if score Time MEDIUM matches ..-1 run scoreboard players set Time MEDIUM 0

## Decision Role Breakdown of Villager
scoreboard players operation Time VILLAGER = Time NUM
scoreboard players operation Time VILLAGER -= Time WOLF
scoreboard players operation Time VILLAGER -= Time MADMAN
scoreboard players operation Time VILLAGER -= Time SEER
scoreboard players operation Time VILLAGER -= Time MEDIUM

## Add Special Roles
scoreboard players operation Time VILLAGER -= Time AddedRole
scoreboard players operation Time VILLAGER -= Time AddedRole
scoreboard players operation Time FOX += Time AddedFox
scoreboard players operation Time VILLAGER += Time AddedFox
scoreboard players operation Time VILLAGER += Time AddedVilla
scoreboard players operation Time VILLAGER += Time AddedVilla
scoreboard players operation Time MASON += Time AddedMason
scoreboard players operation Time MASON += Time AddedMason
scoreboard players operation Time DETECTIVE += Time AddedDetec
scoreboard players operation Time VILLAGER += Time AddedDetec
scoreboard players operation Time CAT += Time AddedCat
scoreboard players operation Time VILLAGER += Time AddedCat