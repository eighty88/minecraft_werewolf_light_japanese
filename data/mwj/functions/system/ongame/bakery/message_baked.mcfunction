###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Give breads
loot give @a[scores={DeathCount=0}] loot mwj:item/roles/bread

## Set scoreboard
scoreboard players remove @s CountOfBakery 1

## Send a Common Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  パンが村のみんなに配られました。","color":"white"}]
tellraw @s ["",{"text":"    配れる回数はあと ","color":"white"},{"score":{"name":"@s","objective":"CountOfBakery"},"color":"white"},{"text":"回 です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]