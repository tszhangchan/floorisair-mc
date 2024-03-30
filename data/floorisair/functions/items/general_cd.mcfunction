kill @e[nbt={Item:{id: "minecraft:barrier"}},type=minecraft:item]
kill @e[nbt={Item:{id: "minecraft:structure_void"}},type=minecraft:item]

# 道具 3 TNT
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item3_status matches 1 run item replace entity @s container.2 with minecraft:barrier{display:{Name:'{"translate":"floorisair.item.unavailable","fallback":"Item Unavailable","italic":false}'}}

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s tnt_cd matches 1..20 run item replace entity @s container.2 with minecraft:structure_void{display:{Name:'{"translate":"floorisair.item.in_cd","fallback":"Item in CD...","italic":false}'}}

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 1 run item replace entity @a[scores={Item3_status=1,tnt_cd=0},team=player] container.2 with minecraft:creeper_spawn_egg{EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.tnt","fallback":"TNT","italic":false}'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 1 run item replace entity @a[scores={tnt_cd=0},team=player] container.2 with minecraft:creeper_spawn_egg{EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.tnt","fallback":"TNT","italic":false}'},Enchantments:[{}]} 1

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s tnt_use matches 1.. run scoreboard players set @s tnt_cd 20
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s tnt_cd matches 1..20 run scoreboard players remove @s tnt_cd 1
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s tnt_use matches 1.. run scoreboard players reset @s tnt_use

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 0 run item replace entity @a[scores={Item3_status=1},team=player] container.2 with minecraft:creeper_spawn_egg{EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.tnt","fallback":"TNT","italic":false}'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 0 run item replace entity @a[team=player] container.2 with minecraft:creeper_spawn_egg{EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.tnt","fallback":"TNT","italic":false}'},Enchantments:[{}]} 1

kill @e[nbt={Item:{id: "minecraft:creeper_spawn_egg"}},type=minecraft:item]

# 道具 4 超級雪球
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item4_status matches 1 run item replace entity @s container.3 with minecraft:barrier{display:{Name:'{"translate":"floorisair.item.unavailable","fallback":"Item Unavailable","italic":false}'}}

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s snowball_cd matches 1..20 run item replace entity @s container.3 with minecraft:structure_void{display:{Name:'{"translate":"floorisair.item.in_cd","fallback":"Item in CD...","italic":false}'}}

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 1 run item replace entity @a[scores={Item4_status=1,snowball_cd=0},team=player] container.3 with minecraft:snowball{display:{Name:'["",{"translate":"floorisair.item.snowball","fallback":"Super Snowball","italic":false}," ",{"translate":"floorisair.item.throw_to_use","fallback":"[Throw to Use]","italic":false}]'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 1 run item replace entity @a[scores={snowball_cd=0},team=player] container.3 with minecraft:snowball{display:{Name:'["",{"translate":"floorisair.item.snowball","fallback":"Super Snowball","italic":false}," ",{"translate":"floorisair.item.throw_to_use","fallback":"[Throw to Use]","italic":false}]'},Enchantments:[{}]} 1

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s snowball_use matches 1.. run scoreboard players set @s snowball_cd 20
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s snowball_cd matches 1..20 run scoreboard players remove @s snowball_cd 1
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s snowball_use matches 1.. run scoreboard players reset @s snowball_use

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 0 run item replace entity @a[scores={Item3_status=1},team=player] container.3 with minecraft:snowball{display:{Name:'["",{"translate":"floorisair.item.snowball","fallback":"Super Snowball","italic":false}," ",{"translate":"floorisair.item.throw_to_use","fallback":"[Throw to Use]","italic":false}]'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 0 run item replace entity @a[team=player] container.3 with minecraft:snowball{display:{Name:'["",{"translate":"floorisair.item.snowball","fallback":"Super Snowball","italic":false}," ",{"translate":"floorisair.item.throw_to_use","fallback":"[Throw to Use]","italic":false}]'},Enchantments:[{}]} 1

kill @e[nbt={Item:{id: "minecraft:snowball"}},type=minecraft:item]

# 道具 6 終界水晶
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item6_status matches 1 run item replace entity @s container.5 with minecraft:barrier{display:{Name:'{"translate":"floorisair.item.unavailable","fallback":"Item Unavailable","italic":false}'}}

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s end_crystal_cd matches 1..200 run item replace entity @s container.5 with minecraft:structure_void{display:{Name:'{"translate":"floorisair.item.in_cd","fallback":"Item in CD...","italic":false}'}}

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 1 run item replace entity @a[scores={Item6_status=1,end_crystal_cd=0},team=player] container.5 with minecraft:endermite_spawn_egg{EntityTag:{id:"minecraft:end_crystal"},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.end_crystal","fallback":"End Crystal","italic":false}'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 1 run item replace entity @a[scores={end_crystal_cd=0},team=player] container.5 with minecraft:endermite_spawn_egg{EntityTag:{id:"minecraft:end_crystal"},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.end_crystal","fallback":"End Crystal","italic":false}'},Enchantments:[{}]} 1

execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s end_crystal_use matches 1.. run scoreboard players set @s end_crystal_cd 200
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s end_crystal_cd matches 1..200 run scoreboard players remove @s end_crystal_cd 1
execute if score game_status value matches 1 if score items_cd value matches 1 as @a[team=player] if score @s end_crystal_use matches 1.. run scoreboard players reset @s end_crystal_use

execute if score game_status value matches 1 if score all_items value matches 0 if score items_cd value matches 0 run item replace entity @a[scores={Item6_status=1},team=player] container.5 with minecraft:endermite_spawn_egg{EntityTag:{id:"minecraft:end_crystal"},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.end_crystal","fallback":"End Crystal","italic":false}'},Enchantments:[{}]} 1
execute if score game_status value matches 1 if score all_items value matches 1 if score items_cd value matches 0 run item replace entity @a[team=player] container.5 with minecraft:endermite_spawn_egg{EntityTag:{id:"minecraft:end_crystal"},CanPlaceOn:["#floorisair:floor","#floorisair:death_block","#floorisair:theme_block"],display:{Name:'{"translate":"floorisair.item.end_crystal","fallback":"End Crystal","italic":false}'},Enchantments:[{}]} 1

kill @e[nbt={Item:{id: "minecraft:endermite_spawn_egg"}},type=minecraft:item]