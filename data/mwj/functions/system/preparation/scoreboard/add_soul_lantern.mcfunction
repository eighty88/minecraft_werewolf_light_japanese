###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Add Variables for Soul Lantern
scoreboard objectives add TeleporterTemp dummy
scoreboard objectives add TeleporterPosX dummy
scoreboard objectives add TeleporterPosY dummy
scoreboard objectives add TeleporterPosZ dummy
scoreboard objectives add DropSoulLantern minecraft.dropped:minecraft.soul_lantern
scoreboard objectives add DropLantern minecraft.dropped:minecraft.lantern

## Data storage 
data remove storage mwj:teleporter Teleporter