execute if score game_status value matches 1 run item replace entity @a weapon.offhand with minecraft:air

# 道具 1 擊退棒
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item1_status matches 1 run item replace entity @s container.0 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 0 run item replace entity @a[scores={Item1_status=1},team=player] container.0 with minecraft:blaze_rod{display:{Name:'{"text":"擊退棒","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:3}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 run item replace entity @a[team=player] container.0 with minecraft:blaze_rod{display:{Name:'{"text":"擊退棒","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:3}]} 1
kill @e[nbt={Item:{id: "minecraft:blaze_rod"}},type=minecraft:item]

# 道具 2 剪刀或鐵鎬
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item2_status matches 1 run item replace entity @s container.1 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 0 if score floor_texture value matches 0 run item replace entity @a[scores={Item4_status=1},team=player] container.1 with minecraft:shears{Unbreakable:1b,CanDestroy:["#floorisair:floor_wool"],Enchantments:[{id:"minecraft:efficiency",lvl:5}],display:{Name:'{"text":"剪刀","italic":false}'}} 1
execute if score game_status value matches 1 if score all_items value matches 0 if score floor_texture value matches 1..2 run item replace entity @a[scores={Item4_status=1},team=player] container.1 with minecraft:iron_pickaxe{Unbreakable:1b,CanDestroy:["#floorisair:floor_concrete","#floorisair:floor_glass"],Enchantments:[{id:"minecraft:efficiency",lvl:20}],display:{Name:'{"text":"鐵鎬","italic":false}'}} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score floor_texture value matches 0 run item replace entity @a[team=player] container.1 with minecraft:shears{Unbreakable:1b,CanDestroy:["#floorisair:floor_wool"],Enchantments:[{id:"minecraft:efficiency",lvl:5}],display:{Name:'{"text":"剪刀","italic":false}'}} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score floor_texture value matches 1..2 run item replace entity @a[team=player] container.1 with minecraft:iron_pickaxe{Unbreakable:1b,CanDestroy:["#floorisair:floor_concrete","#floorisair:floor_glass"],Enchantments:[{id:"minecraft:efficiency",lvl:20}],display:{Name:'{"text":"鐵鎬","italic":false}'}} 1
kill @e[nbt={Item:{id: "minecraft:shears"}},type=minecraft:item]
kill @e[nbt={Item:{id: "minecraft:iron_pickaxe"}},type=minecraft:item]