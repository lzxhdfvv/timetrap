# seconds
# 用于每一秒执行的计算
# 检测没有添加开始游戏 tag 的玩家
execute @s[tag=!start] ~ ~ ~ function start
# 剩余时间减去 1 秒
execute @s[scores={time_seconds=1..}] ~ ~ ~ scoreboard players remove @s time_seconds 1
# 已经存活时间加 1 秒
execute @s[scores={time_seconds=1..}] ~ ~ ~ scoreboard players add @s survival_seconds 1
execute @s[scores={time_seconds=1..}] ~ ~ ~ scoreboard players add @s survival_all 1
# 获取时间
execute @s[scores={time_seconds=1..}] ~ ~ ~ function gettime
# 超出规定的数值给予删除处理
# 没有 hero 标签
execute @s[tag=!hero,scores={level=1,time_seconds=1801..}] ~ ~ ~ scoreboard players set @s time_seconds 1800
execute @s[tag=!hero,scores={level=2,time_seconds=2101..}] ~ ~ ~ scoreboard players set @s time_seconds 2100
execute @s[tag=!hero,scores={level=3,time_seconds=2401..}] ~ ~ ~ scoreboard players set @s time_seconds 2400
execute @s[tag=!hero,scores={level=4,time_seconds=2701..}] ~ ~ ~ scoreboard players set @s time_seconds 2700
execute @s[tag=!hero,scores={level=5,time_seconds=3001..}] ~ ~ ~ scoreboard players set @s time_seconds 3000
execute @s[tag=!hero,scores={level=6,time_seconds=3301..}] ~ ~ ~ scoreboard players set @s time_seconds 3300
execute @s[tag=!hero,scores={level=7,time_seconds=3601..}] ~ ~ ~ scoreboard players set @s time_seconds 3600
# 存在 hero 标签
execute @s[tag=hero,scores={level=1,time_seconds=3601..}] ~ ~ ~ scoreboard players set @s time_seconds 3600
execute @s[tag=hero,scores={level=2,time_seconds=4201..}] ~ ~ ~ scoreboard players set @s time_seconds 4200
execute @s[tag=hero,scores={level=3,time_seconds=4801..}] ~ ~ ~ scoreboard players set @s time_seconds 4800
execute @s[tag=hero,scores={level=4,time_seconds=5401..}] ~ ~ ~ scoreboard players set @s time_seconds 5400
execute @s[tag=hero,scores={level=5,time_seconds=6001..}] ~ ~ ~ scoreboard players set @s time_seconds 6000
execute @s[tag=hero,scores={level=6,time_seconds=6601..}] ~ ~ ~ scoreboard players set @s time_seconds 6600
execute @s[tag=hero,scores={level=7,time_seconds=7201..}] ~ ~ ~ scoreboard players set @s time_seconds 7200
# 处理已经存活的时间
# 已经存活的时间进位
execute @s[scores={survival_seconds=60}] ~ ~ ~ scoreboard players add @s survival_minutes 1
execute @s[scores={survival_seconds=60}] ~ ~ ~ scoreboard players set @s survival_seconds 0
execute @s[scores={survival_minutes=60}] ~ ~ ~ scoreboard players add @s survival_hours 1
execute @s[scores={survival_minutes=60}] ~ ~ ~ scoreboard players set @s survival_minutes 0
# 显示
execute @s[scores={time_seconds=1..}] ~ ~ ~ function title
execute @s[scores={time_seconds=!1..}] ~ ~ ~ function end