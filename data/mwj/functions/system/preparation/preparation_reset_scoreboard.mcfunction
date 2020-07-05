###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add REMOVED_TORCH dummy
scoreboard objectives add DONE dummy
scoreboard objectives add 10 dummy
scoreboard objectives add PAGE_NUMER dummy
scoreboard objectives add PAGE_DENOM dummy
scoreboard objectives add ROLE_PAGE dummy
scoreboard objectives add ROLE_PAGE_NUM dummy
scoreboard objectives add ROLE_TARGET dummy
scoreboard objectives add ROLE_R_PAGE trigger
scoreboard objectives add ROLE_L_PAGE trigger
scoreboard objectives add ROLE_BUTTON trigger
#### Fox
scoreboard objectives add STRAY_BY_FOX dummy
scoreboard objectives add FoxSpawnSecond dummy
scoreboard objectives add FoxSpawnTick dummy
scoreboard objectives add RESPAWN minecraft.custom:minecraft.time_since_death
#### Thief
scoreboard objectives add STEALER dummy
scoreboard objectives add STOLEN dummy
scoreboard objectives add STEAL_NUM dummy
scoreboard objectives add STEAL_FLAG dummy
scoreboard objectives add STEAL_TARGET dummy
scoreboard objectives add ThiefStealSecond dummy
scoreboard objectives add ThiefStealTick dummy
#### Cat
scoreboard objectives add STRAY_BY_CAT dummy
## Add Variables for Items
scoreboard objectives add SNEAKTIME minecraft.custom:minecraft.sneak_time
#### Snowball
scoreboard objectives add SNOWBALL dummy
#### Trident
scoreboard objectives add THROW_TRIDENT minecraft.used:minecraft.trident
#### Mines
scoreboard objectives add DROP_CONDUIT minecraft.dropped:minecraft.conduit
#### Honey block
execute if score #MWL Version matches 15.. run function mwj:system/preparation/scoreboard/add_honey_block
#### Soul lantern
execute if score #MWL Version matches 16.. run function mwj:system/preparation/scoreboard/add_soul_lantern

## Set Variables for Role
execute as @a run scoreboard players operation @s PREV_ROLE = @s ROLE
#### Set Variables for Redstone Torch
scoreboard players set @a TORCH 0
scoreboard players set @a REMOVED_TORCH 0
scoreboard players set @a DONE 0
#### Seer/Medium/Detective
scoreboard players set #MWL 10 10
scoreboard players set @a PAGE_NUMER 0
scoreboard players set @a PAGE_DENOM 0
scoreboard players set @a ROLE_PAGE 0
scoreboard players set @a ROLE_TARGET 0
scoreboard players reset @a ROLE_R_PAGE
scoreboard players reset @a ROLE_L_PAGE
scoreboard players reset @a ROLE_BUTTON
scoreboard players enable @a ROLE_R_PAGE
scoreboard players enable @a ROLE_L_PAGE
scoreboard players enable @a ROLE_BUTTON
scoreboard players set #MWL ROLE_PAGE_NUM 0
function mwj:system/preparation/preparation_reset_page_role
#### Fox
scoreboard players set @a[scores={ROLE=3}] FoxSpawnSecond 0
scoreboard players set @a[scores={ROLE=3}] FoxSpawnTick 0
scoreboard players set @a[scores={ROLE=3}] STRAY_BY_FOX 0
#### Thief
scoreboard players set @a STOLEN 0
scoreboard players set @a[scores={ROLE=9}] STEALER 0
scoreboard players set @a[scores={ROLE=9}] ThiefStealSecond 0
scoreboard players set @a[scores={ROLE=9}] ThiefStealTick 0
scoreboard players set @a[scores={ROLE=9}] STEAL_NUM 0
scoreboard players set @a[scores={ROLE=9}] STEAL_TARGET 0
scoreboard players set @a[scores={ROLE=9}] STEAL_FLAG 0
scoreboard players set #MWL STEAL_NUM 1
#### Cat
scoreboard players set @a STRAY_BY_CAT 0
## Add Items
scoreboard players set @a SNEAKTIME 0
#### Snowball
scoreboard players set #MWL SNOWBALL 0
#### Trident
scoreboard players set @a THROW_TRIDENT 0
#### Mines
scoreboard players set @a DROP_CONDUIT 0
#### Honey block
scoreboard players set @a HoneyBottleCount 0
scoreboard players set @a DROP_HONEY_BLOCK 0
#### Soul lantern
scoreboard players set #MWL TeleporterNum 0
scoreboard players set @a TeleporterPosX 0
scoreboard players set @a TeleporterPosY 0
scoreboard players set @a TeleporterPosZ 0
scoreboard players set @a DROP_SOULLANTERN 0
scoreboard players set @a DROP_LANTERN 0

## Set the Game Time
## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players set #MWL Second 60
scoreboard players operation #MWL Second *= #MWL ChangeGameTime
scoreboard players operation #MWL ChangeGameTime = #MWL Second
## Set Variables for Game
execute as @a[scores={ROLE=1}] run scoreboard players add #MWL BLACK 1
execute as @a[scores={ROLE=3}] run scoreboard players add #MWL PURPLE 1
execute as @a[scores={ROLE=4..10}] run scoreboard players add #MWL WHITE 1
## Set bossbar
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL ChangeGameTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second

## Game Start
scoreboard players set #MWL Phase 11