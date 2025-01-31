###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
title @a subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5 custom","color":"red","bold":true}]
tellraw @a ["",{"text":" - ","color":"white"},{"text":"Hiding Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ゲームモードは、 以下のとおりです。","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"    役職欠け : ","color":"white"},{"text":"なし","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"    参加者数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"    役職欠け : ","color":"white"},{"text":"あり","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"    参加者数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" (役職数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":")","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"      村人陣営の人数が、人狼の人数以下に\n      なったら、人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"      村人陣営の人数が、2人未満になったら、\n      人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"殲滅モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"      村人陣営の人数が、0人になったら、\n      人狼陣営の勝利です。","color":"white"}]
tellraw @a ["",{"text":"    潜伏時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeHideTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}]
tellraw @a ["",{"text":"    制限時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"      残り時間 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGlowTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" で生存者全員が発光","color":"white"}]

execute if score #MWL SetCasting matches 0 run function mwj:system/preparation/output_added_role
execute if score #MWL SetCasting matches 1 run function mwj:system/preparation/output_number_of_role

tellraw @a ["",{"text":"  追加アイテムは、以下のとおりです。","color":"white"}]
execute if score #MWL AddedStick matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・木の棒","color":"white","bold":true}]
execute if score #MWL AddedTotem matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・不死のトーテム","color":"white","bold":true}]
execute if score #MWL AddedDeath matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・即死の残留ポーション","color":"white","bold":true}]
execute if score #MWL AddedPearl matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エンダーパール","color":"white","bold":true}]
execute if score #MWL AddedHoe matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ダイヤのクワ","color":"white","bold":true}]
execute if score #MWL AddedElytra matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エリトラ","color":"white","bold":true}]
execute if score #MWL AddedSnowball matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・フラッシュバン","color":"white","bold":true}]
execute if score #MWL AddedInvis matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・透明化のポーション","color":"white","bold":true}]
execute if score #MWL AddedSpeed matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・俊敏のポーション","color":"white","bold":true}]
execute if score #MWL AddedJump matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・跳躍のポーション","color":"white","bold":true}]
execute if score #MWL AddedTrident matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・トライデント","color":"white","bold":true}]
execute if score #MWL AddedConduit matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・コンカッション地雷","color":"white","bold":true}]
execute if score #MWL AddedCrossbow matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・クロスボウ","color":"white","bold":true}]
execute if score #MWL AddedHoneyBlock matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・スティッキー地雷","color":"white","bold":true}]
execute if score #MWL AddedLantern matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・テレポーター","color":"white","bold":true}]
execute if score #MWL AddedVines matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ねじれツタ","color":"white","bold":true}]
function mwj:system/custom/preparation/change_to
execute if score #MWL AddedStick matches 0 if score #MWL AddedTotem matches 0 if score #MWL AddedDeath matches 0 if score #MWL AddedPearl matches 0 if score #MWL AddedHoe matches 0 if score #MWL AddedElytra matches 0 if score #MWL AddedSnowball matches 0 if score #MWL AddedInvis matches 0 if score #MWL AddedSpeed matches 0 if score #MWL AddedJump matches 0 if score #MWL AddedTrident matches 0 if score #MWL AddedConduit matches 0 if score #MWL AddedCrossbow matches 0 if score #MWL AddedHoneyBlock matches 0 if score #MWL AddedLantern matches 0 if score #MWL AddedVines matches 0 if score #MWL AddedFire matches 0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・無し","color":"white","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL ChangeHideTime
scoreboard players set #MWL Phase 10

## Set bossbar
bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"},"color":"green"},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL ChangeHideTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second