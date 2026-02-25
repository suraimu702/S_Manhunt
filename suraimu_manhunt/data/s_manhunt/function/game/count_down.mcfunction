##スタートカウントダウン
execute if score #count_down temp matches 200 run title @a title {text:"10","color":"green"}
execute if score #count_down temp matches 200 run playsound ui.button.click master @a ~ ~ ~ 1 1 1

execute if score #count_down temp matches 180 run title @a title {text:"9","color":"green"}
execute if score #count_down temp matches 180 run playsound ui.button.click master @a ~ ~ ~ 1 1 1

execute if score #count_down temp matches 160 run title @a title {text:"8","color":"green"}
execute if score #count_down temp matches 160 run playsound ui.button.click master @a ~ ~ ~ 1 1 1

execute if score #count_down temp matches 140 run title @a title {text:"7","color":"green"}
execute if score #count_down temp matches 140 run playsound ui.button.click master @a ~ ~ ~ 1 1 1

execute if score #count_down temp matches 120 run title @a title {text:"6","color":"green"}
execute if score #count_down temp matches 120 run playsound ui.button.click master @a ~ ~ ~ 1 1 1

execute if score #count_down temp matches 100 run title @a title {text:"5","color":"green"}
execute if score #count_down temp matches 100 run playsound ui.button.click master @a ~ ~ ~ 1 1.1 1

execute if score #count_down temp matches 80 run title @a title {text:"4","color":"green"}
execute if score #count_down temp matches 80 run playsound ui.button.click master @a ~ ~ ~ 1 1.2 1

execute if score #count_down temp matches 60 run title @a title {text:"3","color":"yellow"}
execute if score #count_down temp matches 60 run playsound ui.button.click master @a ~ ~ ~ 1 1.3 1

execute if score #count_down temp matches 40 run title @a title {text:"2","color":red}
execute if score #count_down temp matches 40 run playsound ui.button.click master @a ~ ~ ~ 1 1.4 1

execute if score #count_down temp matches 20 run title @a title {text:"1","color":"dark_red"}
execute if score #count_down temp matches 20 run playsound ui.button.click master @a ~ ~ ~ 1 1.5 1

execute if score #count_down temp matches 0 run function s_manhunt:game/start_confirm with storage s_manhunt:

execute if score #count_down temp matches 1.. run schedule function s_manhunt:game/count_down 1t append

scoreboard players remove #count_down temp 1