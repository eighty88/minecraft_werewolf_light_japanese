###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Custom by eight_y_88, Soukun_palpunte
## Date   : 20 Mar 2021
## Version: v.1.5 custom
###############################

## Explode conduit
particle minecraft:explosion ~ ~0.2 ~ 1 1 1 0.5 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.5
effect give @a[team=Player,scores={DeathCount=0},distance=..2] minecraft:nausea 10 1 false
effect give @a[team=Player,scores={DeathCount=0},distance=..2] minecraft:glowing 10 0 true
kill @s