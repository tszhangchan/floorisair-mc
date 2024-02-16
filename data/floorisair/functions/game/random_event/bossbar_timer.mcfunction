bossbar set minecraft:random_event players @a
execute unless score game_status value matches 1 run bossbar set minecraft:random_event visible false
execute if score random_event_status value matches 0 run bossbar set minecraft:random_event visible false
execute if score random_event_status value matches 2 run bossbar set minecraft:random_event visible false
execute if score game_status value matches 1 if score random_event_status value matches 1 run bossbar set minecraft:random_event visible true

execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score jigsaw_use value matches 0 run scoreboard players remove random_event value 1
execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score jigsaw_use value matches 1..200 run scoreboard players remove random_event value 2
execute store result bossbar minecraft:random_event value run scoreboard players get random_event value

execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score random_event value matches ..0 run scoreboard players set jigsaw_use value 0
execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score random_event value matches ..0 run function floorisair:game/random_event/random
execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score random_event value matches ..0 run tellraw @a ["",{"translate":"floorisair.text.random_event_happen","fallback":"%s A random event has just happened.","with":[{"translate":"floorisair.title.event","fallback":"[Event]","color":"dark_red","bold":true}]}]
execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score random_event value matches ..0 run scoreboard players set random_event value 800