# tick
# 用于计算时间
scoreboard objectives add tick dummy
scoreboard players add tick tick 1
scoreboard players add isscoreboard isscoreboard 1
execute @a ~ ~ ~ scoreboard players operation @s tick = tick tick
execute @r[scores={tick=20..}] ~ ~ ~ function timeconfig
execute @a[scores={tick=20..}] ~ ~ ~ function login
execute @r[scores={tick=20..}] ~ ~ ~ function scoreboard
execute @a[scores={tick=20..}] ~ ~ ~ function seconds
execute @a[scores={tick=20..}] ~ ~ ~ function gamerule
execute @r[scores={tick=20..}] ~ ~ ~ scoreboard players set tick tick 0
execute @r ~ ~ ~ function ac