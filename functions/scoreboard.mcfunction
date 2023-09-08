# scoreboard
# 用于生成计算的记分版
# level 用于计算玩家曾经最大的等级
scoreboard objectives add level dummy
# time_seconds 用于计算玩家还能活多久
scoreboard objectives add time_seconds dummy
# title_level 用于计算玩家的显示内容
scoreboard objectives add title_level dummy
# survival_xxxxx 用于计算玩家已经存活了多久
scoreboard objectives add survival_seconds dummy
scoreboard objectives add survival_minutes dummy
scoreboard objectives add survival_hours dummy
scoreboard objectives add survival_all dummy
# 每种矿物可以获取的时间
scoreboard objectives add timeconfig dummy
# 增加时间的倍率
scoreboard objectives add magnification dummy
# 用户是否可以添加时间的判定
scoreboard objectives add canaddtime dummy
scoreboard objectives add timewilladd dummy
# 判断是否诞生英雄
scoreboard objectives add ishero dummy
scoreboard players add ishero ishero 0
scoreboard players set double ishero 2
# 未来“时间”消耗了多少矿物
scoreboard objectives add coal dummy
scoreboard objectives add iron dummy
scoreboard objectives add gold dummy
scoreboard objectives add diamond dummy
scoreboard objectives add copper dummy
scoreboard objectives add netherite dummy
scoreboard objectives add raw_copper dummy
scoreboard objectives add raw_gold dummy
scoreboard objectives add raw_iron dummy
scoreboard objectives add emerald dummy
scoreboard objectives add gold_nugget dummy
scoreboard objectives add iron_nugget dummy
# 已经添加了多少次时间
scoreboard objectives add timeaddcount dummy
# 结束提示
scoreboard objectives add endtitle dummy