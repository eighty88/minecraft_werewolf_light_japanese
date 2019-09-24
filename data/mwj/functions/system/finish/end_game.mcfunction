###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Display of Breakdown of Roles
tellraw @a ["",{"text":"  役職の内訳は以下のとおりでした。","color":"reset"}]
execute if score Time VILLAGER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"村    人","color":"green"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=4}]","color":"reset"}]
execute if score Time SEER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"預 言 者","color":"aqua"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=5}]","color":"reset"}]
execute if score Time MEDIUM matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=6}]","color":"reset"}]
execute if score Time MASON matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=7}]","color":"reset"}]
execute if score Time DETECTIVE matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=8}]","color":"reset"}]
execute if score Time CAT matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=10}]","color":"reset"}]
execute if score Time WOLF matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=1}]","color":"reset"}]
execute if score Time MADMAN matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=2}]","color":"reset"}]
execute if score Time FOX matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={ROLE=3}]","color":"reset"}]

## Send a Display of Survivors
tellraw @a ["",{"text":"\n    ","color":"reset"},{"text":"生 存 者","color":"reset"},{"text":" ： ","color":"reset"},{"selector":"@a[scores={DEATH=0},team=Player]","color":"reset"}]

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------","color":"reset"}]

## Send a Kill Log
tellraw @a ["",{"text":"  死亡記録","color":"reset"}] 
scoreboard players set Time KILLLOG_NUM 1
execute as @a[team=Player] run function mwj:system/finish/kill_log
execute if score Time SECOND matches 1000.. run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"Time","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ゲーム終了","color":"reset"}]
execute if score Time SECOND matches 100..999 run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"Time","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ゲーム終了","color":"reset"}]
execute if score Time SECOND matches 10..99 run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"Time","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ゲーム終了","color":"reset"}]
execute if score Time SECOND matches 0..9 run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"Time","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ゲーム終了","color":"reset"}]

## Remove Objectives
scoreboard objectives remove WOLF
scoreboard objectives remove MADMAN
scoreboard objectives remove VILLAGER
scoreboard objectives remove SEER
scoreboard objectives remove MEDIUM
scoreboard objectives remove CAT
scoreboard objectives remove MASON
scoreboard objectives remove DETECTIVE
scoreboard objectives remove FOX
## Remove Variables for Mason Number
scoreboard objectives add MASON_PAIR dummy
scoreboard objectives add MASON_PAIR_NUM dummy

## Quit Game
function mwj:system/finish/exit_game
