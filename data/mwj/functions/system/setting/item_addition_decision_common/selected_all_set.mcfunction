###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Reset choice
scoreboard players set #MWL AddedStick 1
scoreboard players set #MWL AddedTotem 1
scoreboard players set #MWL AddedDeath 1
scoreboard players set #MWL AddedPearl 1
scoreboard players set #MWL AddedHoe 1

scoreboard players set #MWL AddedElytra 1
scoreboard players set #MWL AddedSnowball 1
scoreboard players set #MWL AddedInvis 1
scoreboard players set #MWL AddedSpeed 1
scoreboard players set #MWL AddedJump 1

scoreboard players set #MWL AddedTrident 1
scoreboard players set #MWL AddedConduit 1
scoreboard players set #MWL AddedCrossbow 1
execute if score #MWL Version matches 15.. run scoreboard players set #MWL AddedHoneyBlock 1
execute if score #MWL Version matches 16.. run scoreboard players set #MWL AddedLantern 1

execute if score #MWL Version matches 16.. run scoreboard players set #MWL AddedVines 1
# scoreboard players set #MWL Added 1
# scoreboard players set #MWL Added 1
# scoreboard players set #MWL Added 1
# scoreboard players set #MWL Added 1

## Set Item Addition
execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision_1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision_2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision_3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision_4/set_added
function mwj:system/setting/item_addition_decision_common/set_inventory