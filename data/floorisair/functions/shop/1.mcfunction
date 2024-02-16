execute if score all_items value matches 1 run tellraw @s ["",{"translate":"floorisair.text.shop.all_items_on","fallback":"%s All items are enabled, so you can't buy items from the shop.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true}]}]
execute if score all_items value matches 0 if score @s Item1_status matches 1 run tellraw @s ["",{"translate":"floorisair.text.shop.item_owned","fallback":"%s You have already owned this item.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true}]}]
execute if score all_items value matches 0 unless score @s Item1_status matches 1 run tellraw @s ["",{"translate":"floorisair.text.shop.buy_success","fallback":"%s Purchase succeeded. You now have %s FIA coin.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true},{"score":{"name":"@s","objective":"fiacoin"}}]}]
execute if score all_items value matches 0 unless score @s Item1_status matches 1 run scoreboard players set @s Item1_status 1