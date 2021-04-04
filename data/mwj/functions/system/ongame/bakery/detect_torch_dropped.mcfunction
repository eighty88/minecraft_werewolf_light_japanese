###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Send Message
execute as @s[scores={CountOfBakery=..0}] run function mwj:system/ongame/bakery/message_error
execute as @s[scores={CountOfBakery=1..}] run function mwj:system/ongame/bakery/message_baked

## Reset Scoreboard
scoreboard players reset @s DropTorch