function floorisair:appearance_settings/theme/quartz
function floorisair:appearance_settings/floor_texture/wool
function floorisair:appearance_settings/death_block/magma_block
function floorisair:gameplay_settings/all_items_off
function floorisair:gameplay_settings/items_cd_on
function floorisair:gameplay_settings/random_event_show
scoreboard players reset @a
scoreboard objectives remove fiacoin
scoreboard objectives add fiacoin dummy {"translate":"floorisair.scoreboard.fiacoin","fallback":"FIA Coin"}
scoreboard objectives remove Item1_status
scoreboard objectives add Item1_status dummy
scoreboard objectives remove Item2_status
scoreboard objectives add Item2_status dummy
scoreboard objectives remove Item3_status
scoreboard objectives add Item3_status dummy
scoreboard objectives remove Item4_status
scoreboard objectives add Item4_status dummy
scoreboard objectives remove Item5_status
scoreboard objectives add Item5_status dummy
scoreboard objectives remove Item6_status
scoreboard objectives add Item6_status dummy
scoreboard objectives remove Item7_status
scoreboard objectives add Item7_status dummy
scoreboard objectives remove Item8_status
scoreboard objectives add Item8_status dummy
scoreboard objectives remove Item9_status
scoreboard objectives add Item9_status dummy
function floorisair:game/reset
tellraw @a ["",{"translate":"floorisair.menu.gameplay.reset_all.description","fallback":"%s All settings and players' properties in Floor is Air! are reset. Have fun!","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true}]}]