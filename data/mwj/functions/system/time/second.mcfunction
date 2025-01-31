###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Calculate time
scoreboard players remove #MWL Second 1
execute if score #MWL Second matches ..-1 run scoreboard players set #MWL Second 0

## Store time for bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second
execute if score #MWL Phase matches 80..100 run bossbar set minecraft:bossbar name [{"text":"初期設定時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute if score #MWL Phase matches 10 run bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"},"color":"green"},{"text":" 秒"}]
execute if score #MWL Phase matches 11 run bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"},"color":"green"},{"text":" 秒"}]

## Process the sound system
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 4..10 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Reset tick
execute unless score #MWL Second matches 0 run scoreboard players set #MWL Tick 19

function mwj:system/custom/ongame/second