###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"  霊媒結果","color":"white"}]

## Send a Message that Victim is Alive
execute as @s[scores={DeathCount=0}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は 生きています","color":"white"}]

## Send a Message that Victim is Black
execute as @s[scores={CurrentRole=1..3,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White Wolf
execute as @s[scores={CurrentRole=4,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白狼","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=5..9,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is Fox
execute as @s[scores={CurrentRole=10,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=11..38,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=39,DeathCount=1..2},tag=Cryptobiosis] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"仮死状態","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=39,DeathCount=1..2},tag=!Cryptobiosis] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=40,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Medium Role Done
scoreboard players set @p[scores={CurrentRole=28,RoleOfNum=1}] RoleDone 1

## Reset Medium Trigger
scoreboard players reset @p[scores={CurrentRole=28,RoleOfNum=1}] TargetOfRole
