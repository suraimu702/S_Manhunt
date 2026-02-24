##スポーンポイントチェック
execute unless entity @e[tag=pos_set] run return run function s_manhunt:game/start_fail

##カウントダウンセット
scoreboard players set #count_down temp 200

##時間変更
time set day

##難易度変更
difficulty peaceful

##カウントダウンファンクション
function s_manhunt:game/count_down