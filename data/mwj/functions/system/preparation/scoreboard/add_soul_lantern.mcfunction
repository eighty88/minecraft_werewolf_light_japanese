###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add Variables for Soul Lantern
scoreboard objectives add TeleporterTemp dummy
scoreboard objectives add TeleporterPosX dummy
scoreboard objectives add TeleporterPosY dummy
scoreboard objectives add TeleporterPosZ dummy
scoreboard objectives add DROP_SOULLANTERN minecraft.dropped:minecraft.soul_lantern
scoreboard objectives add DROP_LANTERN minecraft.dropped:minecraft.lantern

## Data storage 
data remove storage mwj:teleporter Teleporter