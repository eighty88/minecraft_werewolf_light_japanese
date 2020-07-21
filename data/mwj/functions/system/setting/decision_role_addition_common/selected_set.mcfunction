###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Message Added Item to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  追加役職は、 ","color":"white"}]
execute if score #MWL AddedWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMadman matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMadman"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedVilla matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedVilla"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMedium matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMedium"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFox matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFox"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMason matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score #MWL AddedDetec matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedDetec"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedThief matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedThief"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedCat matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedCat"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL AddedFkSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFkSeer"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"Added"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"Added"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"Added"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"Added"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedWolf matches ..0 if score #MWL AddedMadman matches ..0 if score #MWL AddedVilla matches ..0 if score #MWL AddedSeer matches ..0 if score #MWL AddedMedium matches ..0 if score #MWL AddedFox matches ..0 if score #MWL AddedMason matches ..0 if score #MWL AddedDetec matches ..0 if score #MWL AddedThief matches ..0 if score #MWL AddedCat matches ..0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"なし","color":"white","bold":true}]
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
execute if score #MWL AddedRole matches 1.. run tellraw @a ["",{"text":"\n  ","color":"white"},{"text":"残り追加可能人数","color":"white","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedRole"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/decision_role_addition1/set_added
function mwj:system/setting/choose_mode/change_to_choose_mode