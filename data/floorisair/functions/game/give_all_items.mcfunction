# 道具 1 擊退棒
item replace entity @a[team=player] container.0 with minecraft:blaze_rod{display:{Name:'{"text":"擊退棒","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:3}]} 1

# 道具 2 超級雪球
item replace entity @a[team=player] container.0 with minecraft:snowball{display:{Name:'{"text":"超級雪球 [丟出使用]","italic":false}'},Enchantments:[{}]} 1

# 道具 3 釣竿
item replace entity @a[team=player] container.2 with minecraft:fishing_rod{Unbreakable: 1b,display:{Name:'{"text":"釣竿","italic":false}'},Enchantments:[{}]} 1

# 道具 4 剪刀、鐵鎬
execute if score floor_texture value matches 0 run item replace entity @a[team=player] container.3 with minecraft:shears{Unbreakable:1b,CanDestroy:["#floorisair:floor_wool"],Enchantments:[{id:"minecraft:efficiency",lvl:5}],display:{Name:'{"text":"剪刀","italic":false}'}} 1
execute if score floor_texture value matches 1..2 run item replace entity @a[team=player] container.3 with minecraft:iron_pickaxe{Unbreakable:1b,CanDestroy:["#floorisair:floor_concrete","#floorisair:floor_glass"],Enchantments:[{id:"minecraft:efficiency",lvl:20}],display:{Name:'{"text":"鐵鎬","italic":false}'}} 1

# 道具 5 TNT
item replace entity @a[team=player] container.4 with minecraft:spider_spawn_egg{EntityTag:{id:"minecraft:tnt",Fuse:20},CanPlaceOn:["#floorisair:floor","#floorisair:die_block"],display:{Name:'{"text":"TNT","italic":false}'}} 1

# 道具 6-9 飛濺型肥宅藥水、火箭、不死圖騰、時間暫停！
item replace entity @a[team=player] container.5 with minecraft:splash_potion{CustomPotionEffects:[{Id:2,Amplifier:4,Duration:100},{Id:15,Duration:100}],CustomPotionColor:1798420,display:{Name:'{"text":"飛濺型肥宅藥水","italic":false}'}} 1
item replace entity @a[team=player] container.6 with minecraft:firework_rocket{Enchantments:[{}],display:{Name:'{"text":"火箭 [丟棄使用]","italic":false}'}} 1
item replace entity @a[team=player] container.7 with minecraft:totem_of_undying{Enchantments:[{}],display:{Name:'{"text":"不死圖騰 [被動]","italic":false}'}} 1
scoreboard players set @a[team=player] Item8_status 1
item replace entity @a[team=player] container.8 with minecraft:clock{Enchantments:[{}],display:{Name:'{"text":"時間暫停！[丟棄使用]","italic":false}'}} 1