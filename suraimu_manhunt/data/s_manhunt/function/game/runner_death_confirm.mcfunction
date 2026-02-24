##スペクテイターに
gamemode spectator @s

##通知
tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{"selector":"@s"},{"text":"がハンターの付近で死亡したため、観戦者となりました","color":"yellow"}]
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1 1

##チーム退出
team leave @s