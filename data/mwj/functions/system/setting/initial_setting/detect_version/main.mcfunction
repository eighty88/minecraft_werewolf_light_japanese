###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Add scoreboard
scoreboard objectives add Version dummy

## Set scoreboard - Minecraft 1.14
scoreboard players set #MWL Version 14

## Minecraft 1.14
function mwj:system/setting/initial_setting/detect_version/v14

## Minecraft 1.15
function mwj:system/setting/initial_setting/detect_version/v15

## Minecraft 1.16
function mwj:system/setting/initial_setting/detect_version/v16

## Clear inventory
replaceitem entity @p[tag=Host] inventory.0 minecraft:air