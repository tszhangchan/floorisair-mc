# 動作欄標題
execute if score game_status value matches 0 as @a[gamemode=adventure] run title @s times 0 10 2
execute if score game_status value matches 0 run title @a[gamemode=adventure] actionbar [{"translate":"floorisair.text.welcome","with":[{"translate":"floorisair.text.name","color":"gold","bold":true}],"fallback":"Language pack is not installed, displaying English."}]

# 遊戲模式
execute as @a[gamemode=survival] run tellraw @a ["",{"translate":"floorisair.text.survival_detect","fallback":"%s This game requires %s to play, but survival mode is detected. We have changed for you, have fun!","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true},{"translate":"floorisair.text.adventure","fallback":"Adventure Mode","color":"green","bold":true}]}]
execute as @a[gamemode=survival] run gamemode adventure @s
gamemode spectator @a[team=spectator]

# 遊戲外檢測
execute if score game_status value matches 1 as @a at @s if entity @s[team=player] unless entity @s[team=player,x=-16,y=64,z=-16,dx=32,dy=41,dz=32] run tellraw @a ["",{"text":"[死亡]","color":"red","bold":true}," ",{"selector":"@s"}," 掉出遊戲場地外了。"]
execute if score game_status value matches 1 as @a at @s if entity @s[team=player] unless entity @s[team=player,x=-16,y=64,z=-16,dx=32,dy=41,dz=32] run kill @s

execute if score game_status value matches 0 as @a[gamemode=adventure,x=-16,y=99,z=-16,dx=32,dy=-163,dz=32] at @s run teleport @s ~ 101 ~

# 計分板
execute store result score player_count value run execute if entity @a
execute if score game_status value matches 1 store result score ingame_player_count value run execute if entity @a[team=player]
execute as @a unless score @s fiacoin matches 0..2147483647 run scoreboard players set @s fiacoin 0

execute if score game_status value matches 1 as @a[team=player,x=-16,y=63,z=-16,dx=32,dy=5,dz=32] run scoreboard players set @s level 0
execute if score game_status value matches 1 as @a[team=player,x=-16,y=69,z=-16,dx=32,dy=5,dz=32] run scoreboard players set @s level 1
execute if score game_status value matches 1 as @a[team=player,x=-16,y=75,z=-16,dx=32,dy=5,dz=32] run scoreboard players set @s level 2
execute if score game_status value matches 1 as @a[team=player,x=-16,y=81,z=-16,dx=32,dy=5,dz=32] run scoreboard players set @s level 3
execute if score game_status value matches 1 as @a[team=player,x=-16,y=87,z=-16,dx=32,dy=5,dz=32] run scoreboard players set @s level 4
execute if score game_status value matches 1 as @a[team=player,x=-16,y=93,z=-16,dx=32,dy=13,dz=32] run scoreboard players set @s level 5
execute if score game_status value matches 1 run scoreboard players reset @a[team=spectator] level

# 狀態效果
effect give @a minecraft:glowing infinite 0 true
effect give @a minecraft:jump_boost infinite 0 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:resistance infinite 255 true
effect give @a minecraft:saturation infinite 255 true
effect give @a minecraft:speed infinite 0 true
execute if score game_status value matches 1 if score all_items value matches 0 run effect give @a[scores={Item4_status=1}] minecraft:haste 2 49 true
execute if score game_status value matches 1 if score all_items value matches 1 run effect give @a minecraft:haste 2 49 true

# 隊伍
execute if score game_status value matches 0 run team leave @a
execute if score game_status value matches 1 run team join spectator @a[team=]

# 牆壁及地板修復
execute if score game_status value matches 0 if score floor_texture value matches 0 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_wool
execute if score game_status value matches 0 if score floor_texture value matches 1 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_concrete
execute if score game_status value matches 0 if score floor_texture value matches 2 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_stained_glass

execute as @e[tag=block_fixes,tag=death,type=minecraft:marker] at @s run clone 1017 32 1017 983 38 983 ~-33 ~-2 ~-33

execute as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run clone 983 39 983 1016 44 983 ~-33 ~-1 ~-33
execute as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run clone 1017 39 983 1017 44 1016 ~1 ~-1 ~-33
execute as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run clone 984 39 1017 1017 44 1017 ~-32 ~-1 ~1
execute as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run clone 983 39 984 983 44 1017 ~-33 ~-1 ~-32

execute as @e[tag=block_fixes,tag=floor5,type=minecraft:marker] at @s run clone 983 39 983 1016 46 983 ~-33 ~5 ~-33
execute as @e[tag=block_fixes,tag=floor5,type=minecraft:marker] at @s run clone 1017 39 983 1017 46 1016 ~1 ~5 ~-33
execute as @e[tag=block_fixes,tag=floor5,type=minecraft:marker] at @s run clone 984 39 1017 1017 46 1017 ~-32 ~5 ~1
execute as @e[tag=block_fixes,tag=floor5,type=minecraft:marker] at @s run clone 983 39 984 983 46 1017 ~-33 ~5 ~-32

# 大廳
execute if score game_status value matches 0 run clone 984 71 984 999 73 1016 -16 100 -16
execute if score game_status value matches 0 run clone 1004 71 984 1016 71 1015 4 100 -16
execute if score game_status value matches 0 run clone 1004 73 984 1016 73 1015 4 102 -16
execute if score game_status value matches 0 run clone 984 74 984 1016 75 1016 -16 103 -16
execute if score game_status value matches 0 if block 0 100 8 minecraft:air run setblock 0 100 8 minecraft:lectern[facing=north,has_book=true,powered=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{author:"command_music",filtered_title:"鳴謝 Credit v1.2",pages:['"\\n\\n\\n\\n        地板係空氣！\\n       Floor is air!\\n    版本 Version v1.2\\n\\n\\n     《遊戲鳴謝名單》\\n    Game Credit List"','"遊戲作者同開發者\\nAuthor and Developer\\n\\n\\n指音 CM\\n  command_music\\n\\n從 from\\n  CM Playground"','"靈感來自\\nSource of Inspiration\\n\\n\\nHypixel\\n  派對遊戲\\n  Party Game"','"幫助給予\\nGiving Help\\n\\n\\n老章鱼\\n  ZN_zhangyu\\n\\n小小宇\\n  Xiao_Xiao_Yu\\n\\n阿仙\\n  AX_GAME"','"建築\\nBuildings\\n\\n\\n指音\\n  command_music\\n\\n阿仙\\n  AX_GAME"','"建議給予\\nGiving Suggestion\\n\\n\\n世界方块\\n  Shi_Jie_Block\\n\\n阿仙\\n  AX_GAME"','"測試\\nTesting\\n\\n\\n小桃子\\n  ToaDiago\\n\\nwangDiago"'],resolved:1b,title:"鳴謝 Credit v1.2"}},Page:0}
execute if score game_status value matches 0 if block 0 100 -8 minecraft:air run setblock 0 100 -8 minecraft:lectern[facing=south,has_book=true,powered=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{author:"command_music",filtered_title:"鳴謝 Credit v1.2",pages:['"\\n\\n\\n\\n        地板係空氣！\\n       Floor is air!\\n    版本 Version v1.2\\n\\n\\n     《遊戲鳴謝名單》\\n    Game Credit List"','"遊戲作者同開發者\\nAuthor and Developer\\n\\n\\n指音 CM\\n  command_music\\n\\n從 from\\n  CM Playground"','"靈感來自\\nSource of Inspiration\\n\\n\\nHypixel\\n  派對遊戲\\n  Party Game"','"幫助給予\\nGiving Help\\n\\n\\n老章鱼\\n  ZN_zhangyu\\n\\n小小宇\\n  Xiao_Xiao_Yu\\n\\n阿仙\\n  AX_GAME"','"建築\\nBuildings\\n\\n\\n指音\\n  command_music\\n\\n阿仙\\n  AX_GAME"','"建議給予\\nGiving Suggestion\\n\\n\\n世界方块\\n  Shi_Jie_Block\\n\\n阿仙\\n  AX_GAME"','"測試\\nTesting\\n\\n\\n小桃子\\n  ToaDiago\\n\\nwangDiago"'],resolved:1b,title:"鳴謝 Credit v1.2"}},Page:0}

execute if score game_status value matches 0 as @e[tag=shop_item,type=minecraft:marker] at @s run setblock ~-1000 ~27 ~-1000 minecraft:barrel[facing=west]
execute if score game_status value matches 0 as @e[tag=shop1,type=minecraft:marker] at @s run item replace block ~-1000 ~27 ~-1000 container.13 from block ~ ~-2 ~ container.13
execute if score game_status value matches 0 as @e[tag=shop2,type=minecraft:marker] at @s run item replace block ~-1000 ~27 ~-1000 container.12 from block ~ ~-2 ~ container.12
execute if score game_status value matches 0 as @e[tag=shop2,type=minecraft:marker] at @s run item replace block ~-1000 ~27 ~-1000 container.14 from block ~ ~-2 ~ container.14

# 大廳垃圾桶
execute if score game_status value matches -1..0 as @e[type=minecraft:item] at @s if block ~ ~ ~ minecraft:cauldron run kill @s
execute if score game_status value matches 0 as @a at @s if block ~ ~ ~ minecraft:cauldron run damage @s 4 minecraft:generic_kill