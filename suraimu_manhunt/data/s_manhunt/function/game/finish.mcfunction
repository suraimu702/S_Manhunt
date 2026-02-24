##TP等
tp @a @e[tag=pos_set,limit=1]
gamemode adventure @a
effect give @a resistance infinite 5 true

##演出
execute at @e[tag=pos_set] run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.5 15
execute at @e[tag=pos_set] run particle minecraft:spit ~ ~1 ~ 0.2 0.2 0.2 0.3 15
execute at @e[tag=pos_set] run particle minecraft:cherry_leaves ~ ~0.5 ~ 1 1 1 1 30

execute at @e[tag=pos_set] run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.5 1 0

tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{"text":"ランナーが全員死亡したため、ハンターの勝利となります","color":"yellow"}]

##in_match処理
data modify storage s_manhunt: in_match set value 0b