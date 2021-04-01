## Hide Role
scoreboard players operation @a[scores={DrunkPlayer=1..}] TrueRole = @a[scores={DrunkPlayer=1..}] CurrentRole
scoreboard players set @a[scores={TrueRole=1..}] CurrentRole 0

## Display Drunk Role
tellraw @a[scores={DrunkPlayer=1..}] ["",{"text":"\n    ","color":"white"},{"text":"\n    أنت ","color":"white"},{"text":"سكران","color":"gold"},{"text":" يكون","color":"white"}]
tellraw @a[scores={DrunkPlayer=1..}] ["",{"text":"\n    ↑酔っていてアラビア語しか読めません","color":"white"}]