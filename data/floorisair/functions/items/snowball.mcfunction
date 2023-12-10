execute if score game_status value matches 0..1 as @e[type=minecraft:snowball] at @s run fill ~0.5 ~1 ~0.5 ~-0.5 ~-1 ~-0.5 minecraft:air destroy
execute as @e[type=minecraft:snowball] run scoreboard players add @s snowball_time 1
execute as @e[type=minecraft:snowball] if score @s snowball_time matches 11.. run kill @s