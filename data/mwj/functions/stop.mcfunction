###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 March 2019
## Version: beta-1.1
###############################

## Quit the game
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Aborted!!","color":"red"},{"text":"\n  ゲームが中断されました。","color":"reset"}]
function mwj:system/finish/end_game