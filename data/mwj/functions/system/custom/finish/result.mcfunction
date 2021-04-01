## Send Haunting Message
execute if score #MWL SetHaunting matches 1 run tellraw @a [{"text":"\n    地 縛 霊","color":"light_purple"},{"text":" : ","color":"white"},{"selector":"@a[scores={HauntPlayer=1}]","color":"white"}]

## Send Drunk Message
execute if score #MWL SetDrunk matches 1 run tellraw @a [{"text":"\n    酔っ払い","color":"gold"},{"text":" : "},{"selector":"@a[scores={DrunkPlayer=1..}]","color":"white"}]