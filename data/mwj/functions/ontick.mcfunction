###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Login En Route
function mwj:system/en_route

## Run every tick
execute if score Time GAME matches 98 run function mwj:system/setting/decision_role_addition/role_addition_main
execute if score Time GAME matches 97 run function mwj:system/setting/decision_item_addition3/item_addition3_main
execute if score Time GAME matches 96 run function mwj:system/setting/decision_item_addition2/item_addition2_main
execute if score Time GAME matches 95 run function mwj:system/setting/decision_item_addition1/item_addition1_main
execute if score Time GAME matches 94 run function mwj:system/setting/decision_game_mode/game_mode_main
execute if score Time GAME matches 93 run function mwj:system/setting/decision_game_time/game_time_main
execute if score Time GAME matches 92 run function mwj:system/setting/decision_glow_time/glow_time_main
execute if score Time GAME matches 91 run function mwj:system/setting/decision_hide_time/hide_time_main
execute if score Time GAME matches 90 run function mwj:system/setting/choose_mode/choose_mode_main
execute if score Time GAME matches 10 run function mwj:system/preparation/preparation_main
execute if score Time GAME matches 11 run function mwj:system/ongame/ongame