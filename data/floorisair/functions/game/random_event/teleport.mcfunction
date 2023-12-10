execute as @a[team=player] store result score @s level_temp run scoreboard players get @s level
spreadplayers 0 0 0 16 false @a[team=player]
execute as @a[team=player] at @s if score @s level_temp matches 0 run tp @s ~ 67 ~
execute as @a[team=player] at @s if score @s level_temp matches 1 run tp @s ~ 73 ~
execute as @a[team=player] at @s if score @s level_temp matches 2 run tp @s ~ 79 ~
execute as @a[team=player] at @s if score @s level_temp matches 3 run tp @s ~ 85 ~
execute as @a[team=player] at @s if score @s level_temp matches 4 run tp @s ~ 91 ~
execute as @a[team=player] at @s if score @s level_temp matches 5 run tp @s ~ 97 ~
scoreboard players reset @a level_temp