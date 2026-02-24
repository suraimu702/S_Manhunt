##ネザー要塞までの距離表示
execute unless dimension minecraft:the_nether run return run title @s actionbar [{"text":"ディメンションが異なります","color":"red"}]

execute store result score #temp_number temp run locate structure fortress
title @s actionbar [{"text":"ネザー要塞まであと","color":"yellow"},{score:{name:"#temp_number",objective:"temp"},color:aqua},{"text":"m",color:"yellow"}]
scoreboard players reset #temp_number temp