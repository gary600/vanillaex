# Only run if this version is not installed already
execute if entity @e[type=armor_stand,nbt={CustomName:vex_globals,Invulnerable:1b},scores={vex_version=0}] run tellraw @p ["",{"text":"[VanillaEX] ","color":"dark_green","bold":true},{"text":"VanillaEX version 0 is already installed.","color":"none","bold":false}]
execute unless entity @e[type=armor_stand,nbt={CustomName:vex_globals,Invulnerable:1b},scores={vex_version=0}] run function vex:_start
