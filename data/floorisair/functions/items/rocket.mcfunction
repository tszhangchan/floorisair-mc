# 道具 8 火箭
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item8_status matches 1 run item replace entity @s container.7 with minecraft:barrier{display:{Name:'{"translate":"floorisair.item.unavailable","fallback":"Item Unavailable","italic":false}'}}
execute if score game_status value matches 1 as @a[team=player] if score @s rocket_use matches 0 run item replace entity @s container.7 with minecraft:barrier{display:{Name:'{"translate":"floorisair.item.unavailable","fallback":"Item Unavailable","italic":false}'}}

execute if score game_status value matches 1 as @a[team=player] unless score @s rocket_use matches 0 if score @s rocket_cd matches 1..1200 run item replace entity @s container.7 with minecraft:structure_void{display:{Name:'{"translate":"floorisair.item.in_cd","fallback":"Item in CD...","italic":false}'}}

execute if score game_status value matches 1 if score all_items value matches 0 as @a[scores={Item8_status=1,rocket_use=1..2,rocket_cd=0},team=player] run item replace entity @s container.7 with minecraft:firework_rocket{display:{Name:'["",{"translate":"floorisair.item.rocket","fallback":"Rocket","italic":false}," ",{"translate":"floorisair.item.drop_to_use","fallback":"[Drop to Use]","italic":false}]'},Enchantments:[{}]}
execute if score game_status value matches 1 if score all_items value matches 1 as @a[scores={rocket_use=1..2,rocket_cd=0},team=player] run item replace entity @s container.7 with minecraft:firework_rocket{display:{Name:'["",{"translate":"floorisair.item.rocket","fallback":"Rocket","italic":false}," ",{"translate":"floorisair.item.drop_to_use","fallback":"[Drop to Use]","italic":false}]'},Enchantments:[{}]}

execute if score game_status value matches 1 as @a at @s if entity @e[distance=..1.4,nbt={Item:{id: "minecraft:firework_rocket", tag: {display:{Name:'["",{"translate":"floorisair.item.rocket","fallback":"Rocket","italic":false}," ",{"translate":"floorisair.item.drop_to_use","fallback":"[Drop to Use]","italic":false}]'},Enchantments:[{}]}}},type=minecraft:item] run tag @s add rocket_user
execute as @a[tag=rocket_user] at @s run kill @e[distance=..1.4,nbt={Item:{id: "minecraft:firework_rocket", tag: {display:{Name:'["",{"translate":"floorisair.item.rocket","fallback":"Rocket","italic":false}," ",{"translate":"floorisair.item.drop_to_use","fallback":"[Drop to Use]","italic":false}]'},Enchantments:[{}]}}},type=minecraft:item]
execute as @a[tag=rocket_user] run tellraw @a ["",{"translate":"floorisair.text.item.use.rocket","fallback":"%s %s used Rocket to go back to the last level.","with":[{"translate":"floorisair.title.item","fallback":"[Item]","color":"aqua","bold":true},{"selector":"@s"}]}]
execute as @a[tag=rocket_user] run scoreboard players remove @s rocket_use 1
execute as @a[tag=rocket_user] run scoreboard players set @s rocket_cd 1200
execute if score game_status value matches 1 as @a[team=player] if score @s rocket_cd matches 1..1200 run scoreboard players remove @s rocket_cd 1

execute as @a[tag=rocket_user] at @s run teleport ~ ~7 ~
execute as @a[tag=rocket_user] at @s run playsound minecraft:entity.ender_eye.launch voice @s ~ ~ ~ 2147483647 1 1

tag @a[tag=rocket_user] remove rocket_user