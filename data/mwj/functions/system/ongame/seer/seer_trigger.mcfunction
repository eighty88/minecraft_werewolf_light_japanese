###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Send a Common Message
tellraw @s ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @s ["",{"text":"  預言を誰に行う？","color":"reset"}]

## Send Triggers
execute if score Time NUM matches 1.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=1}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 1"},"color":"green","bold":true}]
execute if score Time NUM matches 2.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=2}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 2"},"color":"green","bold":true}]
execute if score Time NUM matches 3.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=3}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 3"},"color":"green","bold":true}]
execute if score Time NUM matches 4.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=4}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 4"},"color":"green","bold":true}]
execute if score Time NUM matches 5.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=5}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 5"},"color":"green","bold":true}]
execute if score Time NUM matches 6.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=6}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 6"},"color":"green","bold":true}]
execute if score Time NUM matches 7.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=7}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 7"},"color":"green","bold":true}]
execute if score Time NUM matches 8.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=8}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 8"},"color":"green","bold":true}]
execute if score Time NUM matches 9.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=9}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 9"},"color":"green","bold":true}]
execute if score Time NUM matches 10.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=10}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 10"},"color":"green","bold":true}]
execute if score Time NUM matches 11.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=11}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 11"},"color":"green","bold":true}]
execute if score Time NUM matches 12.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=12}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 12"},"color":"green","bold":true}]
execute if score Time NUM matches 13.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=13}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 13"},"color":"green","bold":true}]
execute if score Time NUM matches 14.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=14}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"預言","clickEvent":{"action":"run_command","value":"/trigger SEER_OBJ set 14"},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

## Reset Scoreboard
scoreboard players set @s TORCH 0