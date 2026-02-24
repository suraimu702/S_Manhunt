##ハンター距離表示
execute if entity @a[team=hunter,distance=..100] run title @s actionbar {"text":"ハンターが100m以内にいます","color":"red"}
execute if entity @a[team=hunter,distance=..75] run title @s actionbar {"text":"ハンターが75m以内にいます","color":"red"}
execute if entity @a[team=hunter,distance=..50] run title @s actionbar {"text":"ハンターが50m以内にいます","color":"red"}
execute if entity @a[team=hunter,distance=..25] run title @s actionbar {"text":"ハンターが25m以内にいます","color":"red"}