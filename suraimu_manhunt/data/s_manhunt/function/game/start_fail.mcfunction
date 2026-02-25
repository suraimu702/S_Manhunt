##スタート失敗処理
playsound block.fire.extinguish master @a ~ ~ ~ 1 1 0

execute if data storage s_manhunt: {in_match:1b} run return run tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{text:"既にマッチ中です",color:"yellow"}]

tellraw @a [{text:""},{"text":"<",color:"gray"},{text:"M",color:green},{text:"H",color:"red"},{text:">",color:"gray"},{text:"スポーンポイントが設定されていません",color:"yellow"}]