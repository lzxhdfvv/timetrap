# start
# 用于初始化用户的数据
# 把已经存活时间都设置为 0
execute at @s[tag=!start] as @s run scoreboard players add @s survival_seconds 0
execute at @s[tag=!start] as @s run scoreboard players add @s survival_minutes 0
execute at @s[tag=!start] as @s run scoreboard players add @s survival_hours 0
execute at @s[tag=!start] as @s run scoreboard players add @s survival_all 0
# 设置初始的时长
execute at @s[tag=!start] as @s run scoreboard players set @s time_seconds 1201
execute at @s[tag=!start] as @s run scoreboard players set @s level 1
# 统计的初始化
execute at @s[tag=!start] as @s run scoreboard players add @s coal 0
execute at @s[tag=!start] as @s run scoreboard players add @s iron 0
execute at @s[tag=!start] as @s run scoreboard players add @s gold 0
execute at @s[tag=!start] as @s run scoreboard players add @s diamond 0
execute at @s[tag=!start] as @s run scoreboard players add @s copper 0
execute at @s[tag=!start] as @s run scoreboard players add @s netherite 0
execute at @s[tag=!start] as @s run scoreboard players add @s raw_copper 0
execute at @s[tag=!start] as @s run scoreboard players add @s raw_gold 0
execute at @s[tag=!start] as @s run scoreboard players add @s raw_iron 0
execute at @s[tag=!start] as @s run scoreboard players add @s emerald 0
execute at @s[tag=!start] as @s run scoreboard players add @s gold_nugget 0
execute at @s[tag=!start] as @s run scoreboard players add @s iron_nugget 0
execute at @s[tag=!start] as @s run scoreboard players add @s timeaddcount 0
# 结束提示
execute at @s[tag=!start] as @s run scoreboard players add @s endtitle 0
# 完成
execute at @s[tag=!start] as @s run tag @s add start