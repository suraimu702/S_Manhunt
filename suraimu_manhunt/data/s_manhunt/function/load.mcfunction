##初期設定

##スコアボード設定
scoreboard objectives add temp dummy
scoreboard objectives add death deathCount
scoreboard objectives add rotation_score dummy
scoreboard objectives add manhunt_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add manhunt_trigger trigger

##チーム設定
team add runner Runner
team add hunter Hunter
team modify runner color green
team modify hunter color red
team modify runner prefix {"text":"🏃 "}
team modify hunter prefix {"text":"⚔ "}

##ストレージ設定
data modify storage s_manhunt: in_match set value 0b

##その他変更
time set day
weather clear
difficulty peaceful
gamerule pvp false
gamerule send_command_feedback false
gamerule advance_time false
gamerule advance_weather false