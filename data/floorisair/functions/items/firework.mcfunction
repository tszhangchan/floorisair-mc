# 道具 8 火箭
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item8_status matches 1 run item replace entity @s container.7 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 as @a[team=player] if score @s firework_use matches 0 run item replace entity @s container.7 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}

execute if score game_status value matches 1 as @a[team=player] unless score @s firework_use matches 0 if score @s firework_cd matches 1..1200 run item replace entity @s container.7 with minecraft:structure_void{display:{Name:'{"text":"道具冷卻中⋯⋯","italic":false}'}} 1

execute if score game_status value matches 1 if score all_items value matches 0 as @a[scores={Item8_status=1,firework_use=1..2,firework_cd=0},team=player] run item replace entity @s container.7 with minecraft:firework_rocket{display:{Name:'{"text":"火箭 [丟棄使用]","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 1 as @a[scores={firework_use=1..2,firework_cd=0},team=player] run item replace entity @s container.7 with minecraft:firework_rocket{display:{Name:'{"text":"火箭 [丟棄使用]","italic":false}'}}

execute if score game_status value matches 1 as @a at @s if entity @e[distance=..1.4,nbt={Item:{id: "minecraft:firework_rocket", tag: {display: {Name: '{"text":"火箭 [丟棄使用]","italic":false}'}}}},type=minecraft:item] run tag @s add firework_user
execute as @a[tag=firework_user] at @s run kill @e[distance=..1.4,nbt={Item:{id: "minecraft:firework_rocket", tag: {display: {Name: '{"text":"火箭 [丟棄使用]","italic":false}'}}}},type=minecraft:item]
execute as @a[tag=firework_user] run tellraw @a ["",{"text":"[道具]","color":"aqua","bold":true}," ",{"selector":"@s"}," 使用了 火箭 回到上一層。"]
execute as @a[tag=firework_user] run scoreboard players remove @s firework_use 1
execute as @a[tag=firework_user] run scoreboard players set @s firework_cd 1200
execute if score game_status value matches 1 as @a[team=player] if score @s firework_cd matches 1..1200 run scoreboard players remove @s firework_cd 1

execute as @a[tag=firework_user] at @s run teleport ~ ~7 ~
execute as @a[tag=firework_user] at @s run playsound minecraft:entity.ender_eye.launch voice @s ~ ~ ~ 2147483647 1 1

tag @a[tag=firework_user] remove firework_user