###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Added Role Number
scoreboard players operation #MWL AddedRole = #MWL NumOfVillagers
scoreboard players remove #MWL AddedRole 1
scoreboard players set #MWL TempVariable 2
scoreboard players operation #MWL AddedRole /= #MWL TempVariable
execute if score #MWL NumOfRoles matches ..7 run scoreboard players set #MWL AddedRole 0
execute if score #MWL AddedRole matches ..-1 run scoreboard players set #MWL AddedRole 0

scoreboard players operation #MWL AddedRoleNumber = #MWL AddedRole