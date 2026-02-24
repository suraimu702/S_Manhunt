##演出
title @a title [{"text":"Man","color":"green"},{"text":"Hunt","color":"red"},{"text":" Start","color":"aqua"}]

playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1 1

##tp
execute as @e[tag=pos_set] run tp @a @s

##エフェクト付与
effect give @a[team=hunter] blindness 10
effect give @a[team=runner] resistance 30 2
effect give @a instant_health 20 100 true
effect give @a saturation 3 100 true

##in_match処理
data modify storage s_manhunt: in_match set value 1b

##演出
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1 1

##進捗全剥奪
advancement revoke @a everything

##難易度調整
difficulty hard

##インベントリ掃除
clear @a

##スコアリセット
scoreboard players reset @a death

##ゲームルールセット
gamerule pvp true
gamerule advance_time true
gamerule advance_weather true

##初期アイテム配布
execute as @a[team=runner] run function s_manhunt:tracking_paper/give

##参加者のゲームモードをサバイバルに
gamemode survival @a[team=hunter]
gamemode survival @a[team=runner]

##観戦者をスペクテイターに
execute as @a[team=!hunter,team=!runner] run gamemode spectator