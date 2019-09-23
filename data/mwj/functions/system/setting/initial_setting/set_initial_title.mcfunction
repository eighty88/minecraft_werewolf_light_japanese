###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"white"},{"text":"Setting Start!!","color":"green"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@a[tag=host]","color":"white","bold":true},{"text":" は、インベントリを開いて、","color":"white"}]
execute if score Time AddedRole matches 1.. run tellraw @a ["",{"text":"  追加役職と制限時間の設定をしてください。","color":"white"}]
execute if score Time AddedRole matches 0 run tellraw @a ["",{"text":"  制限時間の設定をしてください。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 63