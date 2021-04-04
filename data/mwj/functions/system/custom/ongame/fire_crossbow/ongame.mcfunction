execute at @a[scores={malgunarrow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:4}}}] run kill @e[type=arrow,distance=..3]
execute as @a[scores={malgunarrow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:4}}}] run scoreboard players set @s FireCross 40
execute as @a[scores={FireCross=1..}] at @s run function mwj:system/custom/ongame/fire_crossbow/fire_crossbow
scoreboard players set @a[scores={malgunarrow=1..}] malgunarrow 0
scoreboard players remove @a[scores={FireCross=0..}] FireCross 1