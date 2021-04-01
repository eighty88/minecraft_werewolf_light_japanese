## ReRole
execute as @a[scores={CraftQuartz=1,RoleDone=1}] run tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
execute as @a[scores={CraftQuartz=1,RoleDone=1}] run tellraw @s "あなたの役職が再使用できるようになりました"
execute as @a[scores={CraftQuartz=1,RoleDone=1}] run tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

execute as @a[scores={CraftQuartz=1,RoleDone=0}] run tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
execute as @a[scores={CraftQuartz=1,RoleDone=0}] run tellraw @s "あなたの役職はまだ使用されていません"
execute as @a[scores={CraftQuartz=1,RoleDone=0}] run tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

scoreboard players set @a[scores={CraftQuartz=1,RoleDone=1}] RoleDone 0
scoreboard players set @a[scores={CraftQuartz=1,RoleDone=0}] Quartz 4
loot give @a[scores={Quartz=1..}] loot mwj:item/custom/quartz
scoreboard players remove @a[scores={Quartz=1..}] Quartz 1
scoreboard players set @a CraftQuartz 0
clear @a quartz_block