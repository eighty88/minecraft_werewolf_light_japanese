###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation #MWL AddedStick = #MWL PrevAddedStick
scoreboard players operation #MWL AddedTotem = #MWL PrevAddedTotem
scoreboard players operation #MWL AddedDeath = #MWL PrevAddedDeath
scoreboard players operation #MWL AddedPearl = #MWL PrevAddedPearl
scoreboard players operation #MWL AddedHoe = #MWL PrevAddedHoe

scoreboard players operation #MWL AddedElytra = #MWL PrevAddedElytra
scoreboard players operation #MWL AddedSnowball = #MWL PrevAddedSnowbal
scoreboard players operation #MWL AddedInvis = #MWL PrevAddedInvis
scoreboard players operation #MWL AddedSpeed = #MWL PrevAddedSpeed
scoreboard players operation #MWL AddedJump = #MWL PrevAddedJump

scoreboard players operation #MWL AddedTrident = #MWL PrevAddedTrident
scoreboard players operation #MWL AddedConduit = #MWL PrevAddedConduit
scoreboard players operation #MWL AddedCrossbow = #MWL PrevAddedCrossbo
scoreboard players operation #MWL AddedHoneyBlock = #MWL PrevAddedHoneyBl
scoreboard players operation #MWL AddedLantern = #MWL PrevAddedLantern

## Set item addition
function mwj:system/setting/decision_item_addition_common/selected_set