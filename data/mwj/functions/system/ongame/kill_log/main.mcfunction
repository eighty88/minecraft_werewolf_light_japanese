###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Set Flag
#### Killer Flag
execute as @a[advancements={mwj:killed_player=true},team=Player] run function mwj:system/ongame/kill_log/killer_log
#### Victim Flag
execute as @a[scores={DeathCount=1},team=Player] run function mwj:system/ongame/kill_log/victim_log

## Store Number of Killer Player
#### Victim : 1 -
#### Killer : 0
execute if score #MWL CountOfVictim matches 1.. if score #MWL CountOfKiller matches 0 as @a[scores={FlagOfVictim=1},team=Player] run scoreboard players operation @s NumberOfKiller = @s NumOfPlayers
#### Victim : 1 -
#### Killer : 1
execute if score #MWL CountOfVictim matches 1.. if score #MWL CountOfKiller matches 1 as @a[scores={FlagOfVictim=1},team=Player] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=1}] NumOfPlayers
#### Victim : 2 -
#### Killer : 2 -
execute if score #MWL CountOfVictim matches 2.. if score #MWL CountOfKiller matches 2.. as @a[scores={FlagOfVictim=1},team=Player] run function mwj:system/ongame/kill_log/multi_same_time

## Fox is Seered
execute as @a[team=Player,scores={KillLogOfFox=1}] run scoreboard players operation @s NumberOfKiller = @s KilledBySeer
## Cat Stray Bullet
execute as @a[team=Player,scores={KillLogOfCat=1}] run scoreboard players operation @s NumberOfKiller = @s KilledByCat
## Trident thrown
execute as @a[team=Player,scores={KillLogOfTrident=1}] run scoreboard players operation @s NumberOfKiller = @s KilledByTrident

## Reset Scoreboard
scoreboard players reset @a FlagOfVictim
scoreboard players reset @a FlagOfKiller
scoreboard players reset @a KillLogOfFox
scoreboard players reset @a KillLogOfCat
scoreboard players reset @a KillLogOfTrident
scoreboard players reset @a[tag=!SeeredFox] KilledBySeer
scoreboard players reset @a[tag=!StrayBullet] KilledByCat
scoreboard players reset @a[tag=!TridentHit] KilledByTrident
scoreboard players set #MWL CountOfVictim 0
scoreboard players set #MWL CountOfKiller 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_werewolf
advancement revoke @a only mwj:be_killed_by_madman
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DeathCount=1},team=Player]

## Change the Dead's variables
scoreboard players set @a[scores={DeathCount=1},team=Player] DeathCount 2