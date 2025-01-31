###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Add a tag
tag @s add SetConduit

## Detect player
execute at @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},tag=SetConduit,limit=1] as @a[team=Player,scores={DeathCount=0},distance=..2] unless score @s NumOfPlayers = @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},tag=SetConduit,limit=1,scores={NumOfPlayers=1..}] NumOfPlayers run tag @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},tag=SetConduit,limit=1] add ExplodeConduit
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},tag=ExplodeConduit] at @s run function mwj:system/ongame/conduit/explode_conduit

## Remove a tag
tag @s remove SetConduit
tag @e[tag=ExplodeConduit] remove ExplodeConduit