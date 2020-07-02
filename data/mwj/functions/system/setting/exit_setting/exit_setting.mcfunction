###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Store Number of Role
scoreboard players operation Time AddedRole = Time PrevAddedRole

## Store Variables of ChangeHideTime
scoreboard players set Time ChangeHideTime 15
scoreboard players operation Time ChangeHideTime *= Time HideTime

## Store Variables of ChangeGameTime
scoreboard players set Time ChangeGameTime 5
scoreboard players operation Time ChangeGameTime *= Time GameTime

## Calculate Glow Time
scoreboard players set Time DENOMINATOR 6
scoreboard players operation Time ChangeGlowTime = Time GlowTime
scoreboard players operation Time ChangeGlowTime *= Time ChangeGameTime
scoreboard players operation Time ChangeGlowTime *= Time DENOMINATOR

## Exit Setting - Remove Scoreboard
function mwj:system/setting/exit_setting/remove_scoreboard

## Hide Time
function mwj:system/setting/exit_setting/transition_hide_time