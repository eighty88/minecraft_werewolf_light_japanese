###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Fox Dead
kill @s

tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は最後の羽衣狐が死亡したため、"}]
tellraw @s ["",{"text":"  後追い自殺しました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

scoreboard players set @s RoleDone 1