##エンドラ討伐時処理
tp @a @s
gamemode survival @a
gamerule pvp false
effect give @a resistance infinite 5 true

##in_match処理
data modify storage s_manhunt: in_match set value 0b

##演出
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.5 15
particle minecraft:spit ~ ~1 ~ 0.2 0.2 0.2 0.3 15
particle minecraft:note ~ ~0.5 ~ 1 1 1 1 30

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.5 1.5 0

tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{"text":"エンダードラゴンが討伐されたため、ランナーの勝利となります","color":"yellow"}]

##後処理
advancement revoke @s only s_manhunt:kill_ender_dragon