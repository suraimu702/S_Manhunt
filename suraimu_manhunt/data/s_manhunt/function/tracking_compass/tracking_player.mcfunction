execute store result score #rotation_temp temp run data get entity @s Rotation[0]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["rotation_check"]}
execute as @e[tag=rotation_check,limit=1,sort=nearest,distance=..1] at @s facing entity @a[team=runner,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=rotation_check,limit=1,sort=nearest,distance=..1] store result score #rotation_check temp run data get entity @s Rotation[0]
kill @e[tag=rotation_check,distance=..1,limit=1,sort=nearest]
scoreboard players operation #rotation_temp temp -= #rotation_check temp
execute if score #rotation_temp temp matches 181.. run scoreboard players remove #rotation_temp temp 360
scoreboard players operation @s rotation_score = #rotation_temp temp

execute if score @s rotation_score matches -25..25 run title @s actionbar [{"text":"↑","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↑","color":"yellow"}]
execute if score @s rotation_score matches 26..64 run title @s actionbar [{"text":"↖","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↖","color":"yellow"}]
execute if score @s rotation_score matches -64..-26 run title @s actionbar [{"text":"↗","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↗","color":"yellow"}]
execute if score @s rotation_score matches 65..115 run title @s actionbar [{"text":"←","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"←","color":"yellow"}]
execute if score @s rotation_score matches 116..154 run title @s actionbar [{"text":"↙","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↙","color":"yellow"}]
execute if score @s rotation_score matches -115..-65 run title @s actionbar [{"text":"→","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"→","color":"yellow"}]
execute if score @s rotation_score matches -154..-116 run title @s actionbar [{"text":"↘","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↘","color":"yellow"}]
execute if score @s rotation_score matches -180..-155 run title @s actionbar [{"text":"↓","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↓","color":"yellow"}]
execute if score @s rotation_score matches 155..180 run title @s actionbar [{"text":"↓","color":"yellow"},{"selector":"@a[team=runner,sort=nearest,limit=1]","color":"green"},{"text":"↓","color":"yellow"}]