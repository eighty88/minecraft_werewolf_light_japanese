#Drunk
loot give @a[scores={DrunkPlayer=1..,DrunkKill=1..,Drunk=0}] loot mwj:item/custom/milk_bucket_drunk
scoreboard players set @a[scores={DrunkKill=1..}] Drunk 1
scoreboard players set @a[scores={DrunkKill=1..}] DrunkKill 0

clear @a[scores={DrunkPlayer=1..,Drunk=0}] redstone_torch

#DrinkMilk
execute as @a[scores={DrinkMilk=1..},team=Player] run loot give @s loot mwj:item/common/redstone_torch

tellraw @a[scores={CurrentRole=1,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"人狼","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=4,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"白狼","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=1..4,DrinkMilk=1..}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=5,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"狂人","color":"light_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=6,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"狂信者","color":"light_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=6,DrinkMilk=1..}] ["",{"text":"    人狼は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=10,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=11,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"背徳者","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=11,DrinkMilk=1..}] ["",{"text":"    羽衣狐は ","color":"white"},{"selector":"@a[scores={CurrentRole=10}]","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=20,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"村人","color":"green"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=21,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"共有者","color":"dark_green"},{"text":" です。","color":"white"}]
execute as @a[scores={CurrentRole=21,DrinkMilk=1..}] run function mwj:system/ongame/mason/tell_pair
tellraw @a[scores={CurrentRole=25..26,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"預言者","color":"aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=27,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"賢者","color":"aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=28,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"霊媒師","color":"yellow"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=31,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=35,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"怪盗","color":"blue"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=40,DrinkMilk=1..}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"猫又","color":"gold"},{"text":" です。","color":"white"}]

execute if entity @a[scores={TrueRole=1..}] run scoreboard players operation @a[scores={DrunkPlayer=1..}] CurrentRole = @a[scores={DrunkPlayer=1..}] TrueRole
scoreboard players reset @a TrueRole

scoreboard players set @a[scores={DrinkMilk=1..}] DrinkMilk 0