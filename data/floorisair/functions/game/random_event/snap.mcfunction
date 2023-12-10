tag @r[tag=!snap1,tag=!snap2,team=player] add snap1
tag @r[tag=!snap1,tag=!snap2,team=player] add snap2
execute as @a[tag=snap1,team=player] at @s run summon minecraft:marker ~ ~ ~ {Tags:["snapper","snap1"]}
teleport @e[tag=snapper,tag=snap1,type=minecraft:marker] @a[limit=1,tag=snap1,team=player]
execute as @a[tag=snap2,team=player] at @s run summon minecraft:marker ~ ~ ~ {Tags:["snapper","snap2"]}
teleport @e[tag=snapper,tag=snap2,type=minecraft:marker] @a[limit=1,tag=snap2,team=player]
teleport @a[tag=snap1,team=player] @e[limit=1,tag=snapper,tag=snap2,type=minecraft:marker]
teleport @a[tag=snap2,team=player] @e[limit=1,tag=snapper,tag=snap1,type=minecraft:marker]
kill @e[tag=snapper,type=minecraft:marker]
tag @a remove snap1
tag @a remove snap2