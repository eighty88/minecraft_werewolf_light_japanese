###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Hit in branch
execute as @s[nbt={inGround:1b,pickup:2b}] run function mwj:system/ongame/trident/summon_thunderbolt
execute as @s[nbt={DealtDamage:1b}] run function mwj:system/ongame/trident/summon_thunderbolt

## Throw
execute as @a[scores={THROW_TRIDENT=1}] run function mwj:system/ongame/trident/throw_trident