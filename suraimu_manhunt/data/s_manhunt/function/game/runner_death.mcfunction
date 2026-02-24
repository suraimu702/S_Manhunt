##ハンター検知時処理
execute if entity @a[team=hunter,distance=..100] run function s_manhunt:game/runner_death_confirm

##ハンター不在時処理
execute unless entity @a[team=hunter,distance=..100] run tag @s add give_paper
execute unless entity @a[team=hunter,distance=..100] run function s_manhunt:tracking_paper/death_give

##後処理
scoreboard players reset @s death