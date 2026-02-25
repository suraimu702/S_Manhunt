##スコア処理
scoreboard players reset @s death

##ハードコアモード
execute if data storage s_manhunt: {in_match:1b,runner_hardcore:1b} run return run function s_manhunt:game/runner_death_confirm

##ハンター検知時処理
execute if data storage s_manhunt: {in_match:1b,runner_hardcore:0b} if entity @a[team=hunter,distance=..100] run function s_manhunt:game/runner_death_confirm

##ハンター不在時処理
execute if data storage s_manhunt: {in_match:1b,give_tracking_paper:1b} unless entity @a[team=hunter,distance=..100] run tag @s add give_paper
execute if data storage s_manhunt: {in_match:1b,give_tracking_paper:1b} unless entity @a[team=hunter,distance=..100] run function s_manhunt:tracking_paper/death_give