# 道具 9 不死圖騰
kill @e[nbt={Item:{id: "minecraft:totem_of_undying"}},type=minecraft:item]

execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item9_status matches 1 run item replace entity @s container.8 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 0 as @a[scores={Item9_status=1,totem_use=0},team=player] run item replace entity @s container.8 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 1 as @a[scores={totem_use=0},team=player] run item replace entity @s container.8 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}

execute if score game_status value matches 1 if score all_items value matches 0 as @a[scores={Item9_status=1,totem_use=1},team=player] run item replace entity @s container.8 with minecraft:totem_of_undying{display:{Name:'{"text":"不死圖騰 [被動]","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 1 as @a[scores={totem_use=1},team=player] run item replace entity @s container.8 with minecraft:totem_of_undying{display:{Name:'{"text":"不死圖騰 [被動]","italic":false}'}}

execute as @a[team=player] at @s if score game_status value matches 1 if score @s Item9_status matches 1 if block ~ ~-1 ~ #floorisair:dead_block run tag @s add totem_user
execute as @a[team=player] at @s if score game_status value matches 1 if block ~ ~-1 ~ #floorisair:dead_block run tag @s add totem_user
execute as @a[tag=totem_user] run scoreboard players set @s totem_use 0
execute as @a[tag=totem_user] unless entity @s[tag=totem_announced] run tellraw @a ["",{"text":"[道具]","color":"aqua","bold":true}," ",{"selector":"@s"}," 使用不死圖騰回到了最後一層。"]
execute as @a[tag=totem_user] run tag @s add totem_announced
execute as @a[tag=totem_user] run spreadplayers 0 0 0 16 false @s
execute as @a[tag=totem_user] at @s run teleport @s ~ 73 ~

execute as @a[tag=totem_user] at @s if block ~ ~-4 ~ #floorisair:floor run tag @s remove totem_announced
execute as @a[tag=totem_user] at @s if block ~ ~-4 ~ #floorisair:floor run tag @s remove totem_user