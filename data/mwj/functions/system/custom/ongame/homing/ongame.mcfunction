## パーティクル
execute at @e[type=minecraft:armor_stand,tag=homing] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0 1

## ホーミング弾召喚
execute if entity @a[scores={homing=1..}] if entity @e[type=minecraft:armor_stand,tag=homing] as @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}] run data merge entity @s {PickupDelay:0}
execute at @a[scores={homing=1..}] unless entity @e[type=minecraft:armor_stand,tag=homing] run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if entity @a[scores={homing=1..}] unless entity @e[type=minecraft:armor_stand,tag=homing] run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
execute as @a[scores={homing=1..}] run tag @s add homingUser
execute at @a[scores={homing=1..}] run tag @a[tag=!homingUser,sort=nearest,limit=1,gamemode=!spectator] add homing
execute as @a[scores={homing=1..}] if entity @e[type=minecraft:armor_stand,tag=homing] run tellraw @s {"text":"前の弾が消えるまで次の弾を打てません","color":"green"}
execute as @a[scores={homing=1..}] at @s unless entity @e[type=minecraft:armor_stand,tag=homing] run summon minecraft:armor_stand ^ ^ ^3 {Marker:1,Invisible:1,Tags:["homing"]}
execute if entity @a[scores={homing=1..}] as @e[type=minecraft:armor_stand,tag=homing] run scoreboard players set @s homingCountDown 201
execute as @a[scores={homing=1..}] run scoreboard players set @s homing 0

## ホーミング
execute as @e[type=minecraft:armor_stand,tag=homing] at @s facing entity @a[tag=homing,distance=..100] feet run tp ^ ^ ^0.5

## ホーミング弾から2m以内のプレイヤーにダメージを与える
execute at @e[type=minecraft:armor_stand,tag=homing] run tag @a[distance=..0.5,gamemode=!spectator] add homing_damage
execute if entity @a[tag=homing_damage] at @e[type=minecraft:armor_stand,tag=homing] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute if entity @a[tag=homing_damage] at @e[type=minecraft:armor_stand,tag=homing] run particle minecraft:firework ~ ~ ~ 1 1 1 0.3 100
execute if entity @a[tag=homing_damage] at @e[type=minecraft:armor_stand,tag=homing] run particle minecraft:flash ~ ~ ~ 1 1 1 0 20
execute as @a[tag=homing_damage] if entity @e[type=minecraft:armor_stand,tag=homing] run effect give @s minecraft:slowness 10 2 false
execute if entity @a[tag=homing_damage] as @a[tag=homing] run tag @s remove homing
execute if entity @a[tag=homing_damage] as @e[type=minecraft:armor_stand,tag=homing] run kill @s
execute if entity @a[tag=homing_damage] as @a[tag=homingUser] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute if entity @a[tag=homing_damage] as @a[tag=homingUser] run tag @s remove homingUser
execute as @a[tag=homing_damage] run tag @s remove homing_damage

## 召喚して10秒後 ホーミング弾kill
execute as @e[scores={homingCountDown=1..201}] run scoreboard players remove @s homingCountDown 1
execute at @e[scores={homingCountDown=1}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute at @e[scores={homingCountDown=1}] run particle minecraft:firework ~ ~ ~ 1 1 1 0.3 100
execute at @e[scores={homingCountDown=1}] run particle minecraft:flash ~ ~ ~ 1 1 1 0 20
execute at @e[scores={homingCountDown=1}] run effect give @a[distance=..2] minecraft:instant_damage 1 2 true
execute if entity @e[scores={homingCountDown=1}] run tag @a[tag=homing] remove homing
execute if entity @e[scores={homingCountDown=1}] run tag @a[tag=homingUser] remove homingUser
execute as @e[scores={homingCountDown=1}] run kill @s
