# Only run if VanillaEX is installed
execute unless entity @e[type=armor_stand,nbt={CustomName:vex_globals,Invulnerable:1b}] run tellraw @a ["",{"text":"[VanillaEX] ","color":"dark_green","bold":true},{"text":"VanillaEX isn't installed!","color":"none","bold":false}]
execute if entity @e[type=armor_stand,nbt={CustomName:vex_globals,Invulnerable:1b}] run function vex:_remove
