## Send a Common Message
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"  賢者結果","color":"white"}]

## Send a Message that Suspect is Drunk
execute as @s[scores={DrunkPlayer=1}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] [{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"酔っぱらっています","color":"gold","bold":true}]

## Send a Common Message
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=27,RoleOfNum=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=27,RoleOfNum=1}] TargetOfRole
