# 玩家腳下方塊變化
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches 1..5 run scoreboard players remove @s cd 1
execute if score game_status value matches 1 as @a[team=player] if score @s walk_distance matches 90.. run scoreboard players set @s cd 0
execute if score game_status value matches 1 as @a[team=player] if score @s walk_distance matches 90.. run scoreboard players set @s walk_distance 0

# 自動變化
execute if score game_status value matches 1 as @e[tag=auto_floor,type=minecraft:marker] if entity @a[distance=..0.5] run scoreboard players set @s auto_cd 100
execute if score game_status value matches 1 as @e[tag=auto_floor,type=minecraft:marker] if score @s auto_cd matches 1..100 run scoreboard players remove @s auto_cd 1