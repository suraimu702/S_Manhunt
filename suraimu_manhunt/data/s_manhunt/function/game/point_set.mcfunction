##座標セット
kill @e[tag=pos_set]
summon armor_stand ~ ~ ~ {Tags:["pos_set"],Invisible:1b,Marker:1b}

tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{"text":"スタート座標をセットしました","color":"yellow"}]
playsound block.note_block.bit master @a ~ ~ ~ 1 1 1

setworldspawn ~ ~ ~