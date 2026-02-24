execute if entity @a[team=runner,limit=1,sort=nearest,distance=..1000000] run function s_manhunt:tracking_compass/tracking_player

execute unless entity @a[team=runner,limit=1,sort=nearest,distance=..1000000] run function s_manhunt:tracking_compass/not_found