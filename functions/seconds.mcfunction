# seconds
# 用于每一秒执行的计算
# 检测没有添加开始游戏 tag 的玩家
execute at @s[tag=!start] as @s run function start
# 剩余时间减去 1 秒
execute at @s[scores={time_seconds=1..}] as @s run scoreboard players remove @s time_seconds 1
# 已经存活时间加 1 秒
execute at @s[scores={time_seconds=1..}] as @s run scoreboard players add @s survival_seconds 1
execute at @s[scores={time_seconds=1..}] as @s run scoreboard players add @s survival_all 1
# 获取时间
execute at @s[scores={time_seconds=1..}] as @s run function gettime
# 超出规定的数值给予删除处理
# 没有 hero 标签
execute at @s[tag=!hero,scores={level=1,time_seconds=1801..}] as @s run scoreboard players set @s time_seconds 1800
execute at @s[tag=!hero,scores={level=2,time_seconds=2101..}] as @s run scoreboard players set @s time_seconds 2100
execute at @s[tag=!hero,scores={level=3,time_seconds=2401..}] as @s run scoreboard players set @s time_seconds 2400
execute at @s[tag=!hero,scores={level=4,time_seconds=2701..}] as @s run scoreboard players set @s time_seconds 2700
execute at @s[tag=!hero,scores={level=5,time_seconds=3001..}] as @s run scoreboard players set @s time_seconds 3000
execute at @s[tag=!hero,scores={level=6,time_seconds=3301..}] as @s run scoreboard players set @s time_seconds 3300
execute at @s[tag=!hero,scores={level=7,time_seconds=3601..}] as @s run scoreboard players set @s time_seconds 3600
# 存在 hero 标签
execute at @s[tag=hero,scores={level=1,time_seconds=3601..}] as @s run scoreboard players set @s time_seconds 3600
execute at @s[tag=hero,scores={level=2,time_seconds=4201..}] as @s run scoreboard players set @s time_seconds 4200
execute at @s[tag=hero,scores={level=3,time_seconds=4801..}] as @s run scoreboard players set @s time_seconds 4800
execute at @s[tag=hero,scores={level=4,time_seconds=5401..}] as @s run scoreboard players set @s time_seconds 5400
execute at @s[tag=hero,scores={level=5,time_seconds=6001..}] as @s run scoreboard players set @s time_seconds 6000
execute at @s[tag=hero,scores={level=6,time_seconds=6601..}] as @s run scoreboard players set @s time_seconds 6600
execute at @s[tag=hero,scores={level=7,time_seconds=7201..}] as @s run scoreboard players set @s time_seconds 7200
# 处理已经存活的时间
# 已经存活的时间进位
execute at @s as @s[scores={survival_seconds=60}] run scoreboard players add @s survival_minutes 1
execute at @s as @s[scores={survival_seconds=60}] run scoreboard players set @s survival_seconds 0
execute at @s as @s[scores={survival_minutes=60}] run scoreboard players add @s survival_hours 1
execute at @s as @s[scores={survival_minutes=60}] run scoreboard players set @s survival_minutes 0
# 显示
execute at @s[scores={time_seconds=1..}] as @s run function title
execute at @s[scores={time_seconds=!1..}] as @s run function end