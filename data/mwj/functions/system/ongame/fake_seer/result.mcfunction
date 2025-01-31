###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"  予言結果","color":"white"}]

## Send a Message that Suspect is always White
execute as @s[scores={CurrentRole=1..40}] run tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=26,RoleOfNum=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=26,RoleOfNum=1}] TargetOfRole
