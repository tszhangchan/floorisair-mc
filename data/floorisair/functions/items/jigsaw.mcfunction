# 道具 5 加速隨機事件
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item5_status matches 1 run item replace entity @s container.4 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score jigsaw_use value matches 1 run item replace entity @s container.4 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score random_event_status value matches 0 run item replace entity @s container.4 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}

execute if score game_status value matches 1 if score random_event_status value matches 1..2 as @a[team=player] if score @s jigsaw_cd matches 1..1200 run item replace entity @s container.4 with minecraft:structure_void{display:{Name:'{"text":"道具冷卻中⋯⋯","italic":false}'}} 1

execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score all_items value matches 0 if score jigsaw_use value matches 0 run item replace entity @a[scores={Item5_status=1,jigsaw_cd=0},team=player] container.4 with minecraft:jigsaw{display:{Name:'{"text":"加速隨機事件 [丟棄使用]","italic":false}'}}
execute if score game_status value matches 1 if score random_event_status value matches 1..2 if score all_items value matches 1 if score jigsaw_use value matches 0 run item replace entity @a[scores={jigsaw_cd=0},team=player] container.4 with minecraft:jigsaw{display:{Name:'{"text":"加速隨機事件 [丟棄使用]","italic":false}'}}

execute if score game_status value matches 1 as @a at @s if entity @e[distance=..1.4,nbt={Item:{id: "minecraft:jigsaw", tag: {display: {Name: '{"text":"加速隨機事件 [丟棄使用]","italic":false}'}}}},type=minecraft:item] run tag @s add jigsaw_user
execute as @a[tag=jigsaw_user] at @s run kill @e[distance=..1.4,nbt={Item:{id: "minecraft:jigsaw", tag: {display: {Name: '{"text":"加速隨機事件 [丟棄使用]","italic":false}'}}}},type=minecraft:item]
execute as @a[tag=jigsaw_user] run tellraw @a ["",{"text":"[道具]","color":"aqua","bold":true}," ",{"selector":"@s"}," 加快了隨機事件的發生速度。"]
execute as @a[tag=jigsaw_user] run scoreboard players set jigsaw_use value 200
execute if score game_status value matches 1 if score jigsaw_use value matches 1..200 run scoreboard players remove jigsaw_use value 1
execute as @a[tag=jigsaw_user] run scoreboard players set @s jigsaw_cd 1200
execute if score game_status value matches 1 as @a[team=player] if score @s jigsaw_cd matches 1..1200 run scoreboard players remove @s jigsaw_cd 1

tag @a[tag=jigsaw_user] remove jigsaw_user