## Haunting
execute unless entity @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1,DeathCount=1..}] run title @s title "成仏できません"
execute as @a[scores={HauntPlayer=1,DeathCount=1..}] run gamemode adventure @s
execute unless entity @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1,DeathCount=1..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["HauntPlayer_Teleporter"],Silent:1b}
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1},distance=10..] run effect give @s minecraft:slowness 1000000 1 true
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1},distance=10..] run effect give @s minecraft:jump_boost 1000000 200 true
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1},distance=10..] run replaceitem entity @s armor.head minecraft:zombie_head{Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1,display:{Name:'{"text":"地縛霊さんです","italic":false,"color":"dark_purple"}'}}
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={HauntPlayer=1},distance=10..] run title @s title "ここから出られない"
execute as @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] at @s run tp @a[scores={HauntPlayer=1},distance=10..] ~ ~0.5 ~