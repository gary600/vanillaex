# Unregister gameLoopFunction
gamerule gameLoopFunction -

# Remove vex_globals
kill @e[type=armor_stand,name=vex_globals]

# Remove machines
kill @e[type=armor_stand,name=vex_grinder]

# Remove scoreboard objectives
scoreboard objectives remove vex_version
scoreboard objectives remove vex_counter1
scoreboard objectives remove vex_counter2
scoreboard objectives remove vex_counter3
scoreboard objectives remove vex_counter4

# Announce removal
tellraw @a ["",{"text":"[VanillaEX] ","color":"dark_green","bold":true},{"text":"VanillaEX has been removed.","color":"none","bold":false}]
