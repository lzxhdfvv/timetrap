# tick
# 用于计算时间
scoreboard objectives add tick dummy
scoreboard players add tick tick 1
scoreboard players add isscoreboard isscoreboard 1
execute as @a as @s run scoreboard players operation @s tick = tick tick
execute as @a[scores={tick=20..}] as @s run function timeconfig
execute as @a[scores={tick=20..}] as @s run function login
execute as @a[scores={tick=20..}] as @s run function scoreboard
execute as @a[scores={tick=20..}] as @s run function seconds
execute as @a[scores={tick=20..}] as @s run scoreboard players set tick tick 0