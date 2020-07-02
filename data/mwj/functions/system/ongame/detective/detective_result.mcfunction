###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Scoreboard
scoreboard objectives add TEMP1 dummy
scoreboard objectives add TEMP2 dummy

## Calculate Time Limit
scoreboard players operation @s TEMP1 = @s SECOND
scoreboard players operation @s TEMP1 -= Time SECOND

## Set This Player Flag
scoreboard players set @s TEMP2 1

## Send a Common Message
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"  探偵結果","color":"white"}]

## Send a Message that Victim is Alive
execute as @p[scores={TEMP2=1,DEATH=0}] run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim Time Out of Range
execute as @p[scores={TEMP2=1,DEATH=1..2,TEMP1=181..}] run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim is dead
execute as @p[scores={TEMP2=1,DEATH=1..2,TEMP1=0..180}] run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は殺害されています。","color":"white"}]

## Send a Message that Killer is Known
execute if entity @p[scores={TEMP2=1,DEATH=1..2,TEMP1=0..120}] as @a if score @s NUM = @p[scores={TEMP2=1}] KILLER run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は ","color":"white"},{"selector":"@s","color":"white","bold":true},{"text":" です。","color":"white"}]

## Send a Message that Killer is Unknown
execute if entity @p[scores={TEMP2=1,DEATH=1..2,TEMP1=121..180}] run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は不明です。","color":"white"}]

## Send a Message of Victim's role
execute if entity @p[scores={TEMP2=1,DEATH=1..2,TEMP1=0..60}] as @a if score @s NUM = @p[scores={TEMP2=1}] KILLER run function mwj:system/ongame/detective/detective_role_result

## Send a Common Message
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Remove Scoreboard
scoreboard objectives remove TEMP1
scoreboard objectives remove TEMP2

## Detective Role Done
scoreboard players set @p[scores={ROLE=8,ROLE_OF_NUM=1}] DONE 1

## Reset Detective Trigger
scoreboard players set @p[scores={ROLE=8,ROLE_OF_NUM=1}] ROLE_TARGET 0