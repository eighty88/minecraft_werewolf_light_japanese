###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Number the Members

#### The players' number, that is equal to the GM's number,
####  is incremented by 1.
execute as @a[team=Player] if score @s NumOfPlayers = #MWL CurrentRole run scoreboard players add @s NumOfPlayers 1

#### The GM's number is incremented by 1.
scoreboard players add #MWL CurrentRole 1

#### One random player's number, that is equal to the GM's number,
####  is decremented by 1.
execute as @p[tag=!numbered,team=Player,sort=random] if score @s NumOfPlayers = #MWL CurrentRole run scoreboard players remove @s NumOfPlayers 1

#### If the players' number is NOT equal to the GM's number,
####  these players are put a tag of 'numbered'.
execute as @a[team=Player] unless score @s NumOfPlayers = #MWL CurrentRole run tag @s add numbered
