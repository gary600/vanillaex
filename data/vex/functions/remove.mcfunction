# Only run if VanillaEX is installed
execute unless entity @e[type=armor_stand,name=vex_globals] run tellraw @a ["",{"text":"[VanillaEX] ","color":"dark_green","bold":true},{"text":"VanillaEX isn't installed!","color":"none","bold":false}]
execute if entity @e[type=armor_stand,name=vex_globals] run function vex:_remove
