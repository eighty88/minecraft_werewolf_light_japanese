execute as @e[type=zombie,tag=Drone] run tp @a[scores={Drone=1..},tag=Drone_Player] @s
execute as @a[scores={Drone=1..},tag=Drone_Player] run effect clear @s weakness
execute as @a[scores={Drone=1..},tag=Drone_Player] run effect clear @s resistance
execute as @a[scores={Drone=1..},tag=Drone_Player] run effect clear @s invisibility
execute as @a[scores={Drone=1..},tag=Drone_Player,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick"}]}] run tellraw @s "ドローンを回収した"
execute at @a[scores={Drone=1..},tag=Drone_Player] run kill @e[tag=Drone]
execute at @a[scores={Drone=1..},tag=!Drone_Player] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:18b,ShowParticles:false,Amplifier:10b,Duration:1000000},{Id:11b,Amplifier:10b,ShowParticles:false,Duration:1000000}],Tags:["Drone"],Silent:1b,DeathLootTable:"empty",NoAI:true,PersistenceRequired:false}
execute at @a[scores={Drone=1..},tag=!Drone_Player] run summon silverfish ~ ~ ~ {ActiveEffects:[{Id:18b,ShowParticles:false,Amplifier:10b,Duration:1000000},{Id:11b,Amplifier:10b,ShowParticles:false,Duration:1000000}],Tags:["Drone"],DeathLootTable:"empty",NoAI:true,PersistenceRequired:false}
execute as @a[scores={Drone=1..},tag=!Drone_Player] run tellraw @s "ドローンを召喚した！\n※ドローンか本体がダメージを受けるとドローン制御装置が壊れます"
execute as @a[scores={Drone=1..},tag=!Drone_Player] run tp @e[type=zombie,tag=Drone] @s
execute as @a[scores={Drone=1..},tag=!Drone_Player] run loot replace entity @e[type=zombie,tag=Drone] armor.head loot league:head_copy
execute as @a[scores={Drone=1..}] unless entity @a[tag=Drone_Player] run tag @s add Drone_Player
execute as @a[scores={Drone=1..},tag=Drone_Player] unless entity @e[tag=Drone] run tag @s remove Drone_Player
execute as @a[scores={Drone=1..}] run scoreboard players set @s Drone 0
execute as @a[tag=Drone_Player] run effect give @s invisibility 1 0 true
execute as @a[tag=Drone_Player] run effect give @s resistance 1 4 true
execute as @a[tag=Drone_Player] run effect give @s weakness 1 254 false
execute if entity @a[tag=Drone_Player] as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] run data merge entity @s {PickupDelay:0s}
execute as @a[tag=Drone_Player,scores={Drone_Bow=1..}] at @s run kill @e[type=arrow,distance=..2]
execute as @a[tag=Drone_Player,scores={Drone_Bow=1..}] run scoreboard players set @s Drone_Bow 0
execute as @a[tag=Drone_Player,scores={Drone_Crossbow=1..}] at @s run kill @e[type=arrow,distance=..2]
execute as @a[tag=Drone_Player,scores={Drone_Crossbow=1..}] run scoreboard players set @s Drone_Crossbow 0
execute as @a[tag=Drone_Player] run tp @e[type=silverfish,tag=Drone] @s

execute as @e[tag=Drone_Player,nbt={HurtTime:10s}] run scoreboard players set @s Drone 1
execute as @a[tag=Drone_Player,nbt={HurtTime:10s}] run clear @s warped_fungus_on_a_stick 1
execute as @e[tag=Drone,nbt={HurtTime:10s}] run scoreboard players set @a[tag=Drone_Player] Drone 1
execute if entity @e[tag=Drone,nbt={HurtTime:10s}] run clear @a[tag=Drone_Player] warped_fungus_on_a_stick 1