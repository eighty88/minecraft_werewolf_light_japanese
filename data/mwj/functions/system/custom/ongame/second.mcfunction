#Haunting
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 1 as @a[team=Player] run scoreboard players set @s HauntPlayer 0
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 0 if score #MWL SetHaunting matches 1 run scoreboard players set @r[team=Player] HauntPlayer 1

#Drunk
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 0 if score #MWL SetDrunk matches 1 run scoreboard players set @r[team=Player] DrunkPlayer 1
execute if score #MWL Phase matches 10..11 if score #MWL Second matches 1 run scoreboard players set @a DrunkPlayer 0