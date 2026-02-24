##現在の座標を通知
execute store result score #pos_x temp run data get entity @s Pos[0]
execute store result score #pos_y temp run data get entity @s Pos[1]
execute store result score #pos_z temp run data get entity @s Pos[2]

tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{"selector":"@s"},{"text":"の現世側ゲート座標 ","color":"yellow"},{"text":"\u5ea7\u6a19","color":"aqua"},{"text":" X:","color":"white"},{"score":{"name":"#pos_x","objective":"temp"},"color":"white"},{"text":" Y:","color":"white"},{"score":{"name":"#pos_y","objective":"temp"},"color":"white"},{"text":" Z:","color":"white"},{"score":{"name":"#pos_z","objective":"temp"},"color":"white"}]

##音
playsound item.flintandsteel.use master @a ~ ~ ~ 1 1 1