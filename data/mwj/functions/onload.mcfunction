###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Change gamerules always
gamerule maxCommandChainLength 65536
gamerule doFireTick false
gamerule doMobSpawning false

## Send Title Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5 custom","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Thank you for Downloading","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]
tellraw @a ["",{"text":"  当ゲームの必要人数は","color":"white"},{"text":" 3 ","color":"red","bold":true},{"text":"人からです。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを開始してください。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mwj:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム開始"},"clickEvent":{"action":"suggest_command","value":"/function #mwj:start"}}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]
