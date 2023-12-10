# ========== 隨機事件列表 ========== #
# 非特別註明，效果預設為 5 秒，效果適用所有玩家
# 非特別註明，生成實體位置為隨機玩家
#
# 0 - 無事發生
# 
# 1..2 - 隨機兩位玩家位置互換
# 3..4 - 所有玩家隨機傳送（同層數）
#
# 5..6 - TNT
# 7..8 - 終界水晶
#
# 9 - 速度 V、跳躍提升 III
# 10 - 速度 L
# 11 - 緩降
# 12 - 緩速 III
# 13 - 懸浮 0 (CCLVI)
# 14 - 失明
# 15 - 黑暗
#
# 16 - 史萊姆
# 17 - 烈焰使者
# 18 - Creeper
# 19 - 劫毀獸
# 20 - 喚魔者
#
# 21..50 - 再次執行
#
# ================================ #

tag @e[limit=1,sort=random,tag=number,type=minecraft:armor_stand] add number_chosen
execute if score @e[limit=1,tag=number_chosen] number matches 0

execute if score @e[limit=1,tag=number_chosen] number matches 1..2 run function floorisair:game/random_event/snap
execute if score @e[limit=1,tag=number_chosen] number matches 3..4 run function floorisair:game/random_event/teleport

execute if score @e[limit=1,tag=number_chosen] number matches 5..6 run execute as @r[team=player] at @s run summon minecraft:tnt ~ ~0.5 ~ {Fuse:20}
execute if score @e[limit=1,tag=number_chosen] number matches 7..8 run execute as @r[team=player] at @s run summon minecraft:end_crystal ~ ~ ~

execute if score @e[limit=1,tag=number_chosen] number matches 9 run effect give @a[team=player] minecraft:speed 5 4 false
execute if score @e[limit=1,tag=number_chosen] number matches 9 run effect give @a[team=player] minecraft:jump_boost 5 2 false
execute if score @e[limit=1,tag=number_chosen] number matches 10 run effect give @a[team=player] minecraft:speed 5 49 false
execute if score @e[limit=1,tag=number_chosen] number matches 11 run effect give @a[team=player] minecraft:slow_falling 5 0 false
execute if score @e[limit=1,tag=number_chosen] number matches 12 run effect give @a[team=player] minecraft:slowness 5 2 false
execute if score @e[limit=1,tag=number_chosen] number matches 13 run effect give @a[team=player] minecraft:levitation 5 255 false
execute if score @e[limit=1,tag=number_chosen] number matches 14 run effect give @a[team=player] minecraft:blindness 5 0 false
execute if score @e[limit=1,tag=number_chosen] number matches 15 run effect give @a[team=player] minecraft:darkness 5 0 false

execute if score @e[limit=1,tag=number_chosen] number matches 16 run execute as @r[team=player] at @s run summon minecraft:slime ~ ~ ~
execute if score @e[limit=1,tag=number_chosen] number matches 17 run execute as @r[team=player] at @s run summon minecraft:blaze ~ ~ ~
execute if score @e[limit=1,tag=number_chosen] number matches 18 run execute as @r[team=player] at @s run summon minecraft:creeper ~ ~ ~
execute if score @e[limit=1,tag=number_chosen] number matches 19 run execute as @r[team=player] at @s run summon minecraft:ravager ~ ~ ~
execute if score @e[limit=1,tag=number_chosen] number matches 20 run execute as @r[team=player] at @s run summon minecraft:evoker ~ ~ ~

execute if score @e[limit=1,tag=number_chosen] number matches 21..50 run function floorisair:game/random_event/random

tag @e remove number_chosen