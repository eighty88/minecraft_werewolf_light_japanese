## Choose set quartz
execute if score #MWL PrevSetQuartz matches 0 run scoreboard players set #MWL SetQuartz 1
execute if score #MWL PrevSetQuartz matches 1 run scoreboard players set #MWL SetQuartz 0
scoreboard players operation #MWL PrevSetQuartz = #MWL SetQuartz

tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetQuartz matches 1 run tellraw @a ["",{"text":"  クオーツが、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetQuartz matches 0 run tellraw @a ["",{"text":"  クオーツが、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

clear @a quartz

function mwj:system/setting/choose_mode/change_to