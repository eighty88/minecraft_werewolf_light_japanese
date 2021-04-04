###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Twisting Vines
execute as @a[team=Player,scores={DropTwistVines=1..,SneakTime=1..}] at @s run function mwj:system/ongame/twisting_vines/throw_vines
scoreboard players set @a[team=Player,scores={DropTwistVines=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropTwistVines=1..}] DropTwistVines 1
scoreboard players reset @a[team=Player,scores={DropTwistVines=..0}] DropTwistVines