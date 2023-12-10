

# 道具 2 超級雪球
execute as @a[team=player, scores={Item2_status=1..}] at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:snowball",Count: 1b, tag: {display:{Name:'{"text":"超級雪球 [丟出使用]","italic":false}'},Enchantments:[{}]}}}
execute as @a[team=player, scores={Item2_status=1..}] at @s run data modify entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item: {id: "minecraft:snowball"}}] Owner set from entity @s
execute as @a[team=player, scores={Item2_status=1..}] at @s store result entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item: {id: "minecraft:snowball"}}] Item.Count byte 1 run scoreboard players get @s Item2_status

# 道具 3 釣竿
item replace entity @a[team=player, scores={Item3_status=1}] container.2 with minecraft:fishing_rod{Unbreakable: 1b,display:{Name:'{"text":"釣竿","italic":false}'},Enchantments:[{}]} 1

# 道具 4 剪刀、鐵鎬


# 道具 5 TNT
execute as @a[team=player, scores={Item5_status=1..}] at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:spider_spawn_egg",Count: 1b, tag: {EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:die_block"],display:{Name:'{"text":"TNT","italic":false}'}}}}
execute as @a[team=player, scores={Item5_status=1..}] at @s run data modify entity @e[type=minecraft:item,sort=nearest,limit=1, nbt={Item: {id: "minecraft:spider_spawn_egg"}}] Owner set from entity @s
execute as @a[team=player, scores={Item5_status=1..}] at @s store result entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item: {id: "minecraft:spider_spawn_egg"}}] Item.Count byte 1 run scoreboard players get @s Item5_status

# 道具 6-9 飛濺型廢宅藥水、火箭、不死圖騰、時間暫停！
item replace entity @a[team=player, scores={Item6_status=1}] container.5 with minecraft:splash_potion{CustomPotionEffects:[{Id:2,Amplifier:4,Duration:100},{Id:15,Duration:100}],CustomPotionColor:1798420,display:{Name:'{"text":"飛濺型肥宅藥水","italic":false}'}} 1
item replace entity @a[team=player, scores={Item7_status=1}] container.6 with minecraft:firework_rocket{Enchantments:[{}],display:{Name:'{"text":"火箭 [丟棄使用]","italic":false}'}} 1
item replace entity @a[team=player, scores={Item8_status=1}] container.7 with minecraft:totem_of_undying{Enchantments:[{}],display:{Name:'{"text":"不死圖騰 [被動]","italic":false}'}} 1
item replace entity @a[team=player, scores={Item9_status=1}] container.8 with minecraft:clock{Enchantments:[{}],display:{Name:'{"text":"時間暫停！[丟棄使用]","italic":false}'}} 1