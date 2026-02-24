##警告メッセージ表示
execute as @a[team=runner] unless items entity @s weapon.* paper at @s if entity @a[distance=..100,team=hunter] run function s_manhunt:game/near_hunter

##最寄りのランナー表示(ハンター用)
execute as @a[team=hunter] at @s run function s_manhunt:tracking_compass/main

##トラッカーペーパー所持プレイヤー処理
execute as @a if items entity @s weapon.* paper[custom_data={track_village:1b}] at @s run function s_manhunt:tracking_paper/track_village
execute as @a if items entity @s weapon.* paper[custom_data={track_fortress:1b}] at @s run function s_manhunt:tracking_paper/track_fortress
execute as @a if items entity @s weapon.* paper[custom_data={track_stronghold:1b}] at @s run function s_manhunt:tracking_paper/track_stronghold

##死亡時(ランナー用)
execute as @a[team=runner] if score @s death matches 1.. at @s run function s_manhunt:game/runner_death

##ハンター勝利処理
execute if data storage s_manhunt: {in_match:1b} unless entity @a[team=runner,gamemode=survival] run function s_manhunt:game/finish

##ロール選択
execute if data storage s_manhunt: {in_match:0b} if entity @a[tag=!roll_select] as @a[tag=!roll_select] run function s_manhunt:show_roll_dialog
execute if data storage s_manhunt: {in_match:0b} if entity @a[scores={manhunt_leave=1..}] as @a[scores={manhunt_leave=1..}] run function s_manhunt:reset_dialog