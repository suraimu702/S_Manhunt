##村までの距離表示
execute unless dimension minecraft:overworld run return run title @s actionbar [{"text":"ディメンションが異なります","color":"red"}]

execute store result score #temp_number temp run locate structure #village
title @s actionbar [{"text":"村まであと","color":"yellow"},{score:{name:"#temp_number",objective:"temp"},color:aqua},{"text":"m",color:"yellow"}]
scoreboard players reset #temp_number temp