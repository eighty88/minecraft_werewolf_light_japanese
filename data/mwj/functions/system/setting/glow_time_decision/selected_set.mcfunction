###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Send a Message Glow Time to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  発光時間が、制限時間の ","color":"white"},{"score":{"name":"#MWL","objective":"GlowTime"},"color":"green","bold":true},{"text":"割","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to