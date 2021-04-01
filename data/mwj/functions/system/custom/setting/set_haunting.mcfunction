## Choose set Haunting
execute if score #MWL PrevSetHaunting matches 0 run scoreboard players set #MWL SetHaunting 1
execute if score #MWL PrevSetHaunting matches 1 run scoreboard players set #MWL SetHaunting 0
scoreboard players operation #MWL PrevSetHaunting = #MWL SetHaunting

tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetHaunting matches 1 run tellraw @a ["",{"text":"  地縛霊が、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetHaunting matches 0 run tellraw @a ["",{"text":"  地縛霊が、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

clear @a totem_of_undying

function mwj:system/setting/choose_mode/change_to