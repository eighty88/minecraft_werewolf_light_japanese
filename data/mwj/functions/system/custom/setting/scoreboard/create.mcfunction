## Add Variables for Setting Quartz
scoreboard objectives add Quartz dummy
scoreboard objectives add SetQuartz dummy
scoreboard objectives add PrevSetQuartz dummy
## Add Variables for Setting Haunting
scoreboard objectives add Haunting dummy
scoreboard objectives add SetHaunting dummy
scoreboard objectives add PrevSetHaunting dummy
scoreboard objectives add HauntPlayer dummy
## Add Variables for Setting Drunk
scoreboard objectives add Drunk dummy
scoreboard objectives add SetDrunk dummy
scoreboard objectives add PrevSetDrunk dummy
scoreboard objectives add DrunkPlayer dummy
scoreboard objectives add DrunkKill playerKillCount

## Set Quartz
scoreboard players set #MWL SetQuartz 0
scoreboard players set #MWL PrevSetQuartz 0
## Set Haunting
scoreboard players set #MWL SetHaunting 0
scoreboard players set #MWL PrevSetHaunting 0
## Set Drunk
scoreboard players set #MWL SetDrunk 0
scoreboard players set #MWL PrevSetDrunk 0

scoreboard players set @a Drunk 0

## Add Variables for GUI Item Addition
scoreboard objectives add AddedFire dummy
scoreboard objectives add AddedDrone dummy
scoreboard objectives add AddedHoming dummy
scoreboard objectives add PrevAddedFire dummy
scoreboard objectives add PrevAddedDrone dummy
scoreboard objectives add PrevAddedHoming dummy
## Set Variables for GUI Item Addition
scoreboard players set #MWL AddedFire 1
scoreboard players set #MWL AddedDrone 1
execute if score #MWL Version matches 16.. run scoreboard players set #MWL AddedDrone 1
scoreboard players set #MWL AddedHoming 1
scoreboard players set #MWL PrevAddedFire 1
scoreboard players set #MWL PrevAddedDrone 0
execute if score #MWL Version matches 16.. run scoreboard players set #MWL PrevAddedDrone 1
scoreboard players set #MWL PrevAddedHoming 1
