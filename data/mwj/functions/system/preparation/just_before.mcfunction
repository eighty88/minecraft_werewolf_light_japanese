###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Just before setting
function mwj:system/preparation/set_scoreboard
function mwj:system/finish/revoke_advancements

## Recount the Number of Players
execute if score #MWL SetCasting matches 0 run function mwj:system/setting/initial_setting/set_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/setting/initial_setting/set_added_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/preparation/reset_added_role
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole -= #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches ..-1 run scoreboard players operation #MWL NumOfVillagers -= #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/decrease_number_of_role
## Dummy Role
execute unless score #MWL Phase matches 0 if score #MWL SetDummyRole matches 1 run function mwj:system/preparation/set_dummy_role
## Decide Roles
execute unless score #MWL Phase matches 0 run function mwj:system/preparation/role_decision
## Give Items
execute unless score #MWL Phase matches 0 run function mwj:system/preparation/give_item
## Title and Chat Message
execute unless score #MWL Phase matches 0 run function mwj:system/ongame/title_message
## Reset Scoreboard
execute unless score #MWL Phase matches 0 run function mwj:system/ongame/change_to
## Reset Scoreboard
execute if score #MWL Phase matches 0 run function mwj:stop