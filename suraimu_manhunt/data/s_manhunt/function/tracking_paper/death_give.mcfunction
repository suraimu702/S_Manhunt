execute as @a[tag=give_paper] if data entity @s {Health:20.0f} run return run function s_manhunt:tracking_paper/give

schedule function s_manhunt:tracking_paper/death_give 1t append