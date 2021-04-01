## Choose set Drunk
execute if score #MWL PrevSetDrunk matches 0 run scoreboard players set #MWL SetDrunk 1
execute if score #MWL PrevSetDrunk matches 1 run scoreboard players set #MWL SetDrunk 0
scoreboard players operation #MWL PrevSetDrunk = #MWL SetDrunk

tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetDrunk matches 1 run tellraw @a ["",{"text":"  酔っぱらいが、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDrunk matches 0 run tellraw @a ["",{"text":"  酔っぱらいが、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

clear @a milk_bucket

function mwj:system/setting/choose_mode/change_to