execute if score game_status value matches 1 as @a[team=player] at @s if block ~ ~-1 ~ minecraft:air run scoreboard players add @s on_air 1
execute if score game_status value matches 1 as @a[team=player] at @s unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s on_air 0
execute if score game_status value matches 1 as @a[team=player] at @s if score @s on_air matches 30.. run fill ~1 ~1 ~1 ~-1 ~-2 ~-1 minecraft:air destroy
execute if score game_status value matches 1 as @a if score @s on_air matches 30.. run scoreboard players set @s on_air 0
execute if score game_status value matches 1 if score clock_use value matches 1..100 run scoreboard players set @s on_air 0