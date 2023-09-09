# end
# 玩家结束后的提示
execute at @s[scores={time_seconds=0}] as @s run scoreboard players set @s title_level 0
execute at @s[scores={time_seconds=0,endtitle=!42..}] as @s run scoreboard players add @s endtitle 1
execute at @s[scores={title_level=0,endtitle=1}] as @s run effect @s blindness 40 99 true
execute at @s[scores={title_level=0,endtitle=1}] as @s run effect @s slowness 40 99 true
execute at @s[scores={time_seconds=0}] as @s run scoreboard players set @s title_level 0
execute at @s[scores={title_level=0,endtitle=1,time_seconds=0}] as @s run title @s times 1 1000 1
execute at @s[scores={title_level=0,endtitle=40..,time_seconds=0}] as @s run title @s times 10 70 20
execute at @s[scores={title_level=0,endtitle=1}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=5}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=9}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=13}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=15}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=19}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=23}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=25}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=29}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=33}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=37}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={title_level=0,endtitle=41}] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
# 玩家的提示
execute at @s[scores={title_level=0,endtitle=1}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f努力半生，"}]}
execute at @s[scores={title_level=0,endtitle=5}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f最终发现————"}]}
execute at @s[scores={title_level=0,endtitle=9}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f只是为了活着。"}]}
execute at @s[scores={title_level=0,endtitle=13}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f......"}]}
execute at @s[scores={title_level=0,endtitle=15}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f人面不知何处去，桃花依旧笑春风。"}]}
execute at @s[scores={title_level=0,endtitle=19}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f摘录自 崔护《题都城南庄》。"}]}
execute at @s[scores={title_level=0,endtitle=23}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f......"}]}
execute at @s[scores={title_level=0,endtitle=25}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您总共存活"}]}
execute at @s[scores={title_level=0,endtitle=29,survival_minutes=0..9,survival_seconds=0..9}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=29,survival_minutes=0..9,survival_seconds=!0..9}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=29,survival_minutes=!0..9,survival_seconds=0..9}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=29,survival_minutes=!0..9,survival_seconds=!0..9}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=33}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f得分"}]}
execute at @s[scores={title_level=0,endtitle=37}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute at @s[scores={title_level=0,endtitle=41}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§c游戏结束。"}]}
execute at @s[scores={title_level=0,endtitle=1..40}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。"}]}
execute at @s[scores={title_level=0,endtitle=41..,survival_minutes=0..9,survival_seconds=0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute at @s[scores={title_level=0,endtitle=41..,survival_minutes=0..9,survival_seconds=!0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute at @s[scores={title_level=0,endtitle=41..,survival_minutes=!0..9,survival_seconds=0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute at @s[scores={title_level=0,endtitle=41..,survival_minutes=!0..9,survival_seconds=!0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
# 得分计算
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set minutes scores 60
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set twelve scores 12
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set four scores 4
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set six scores 6
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set three scores 3
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set fifteen scores 15
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set ten scores 10
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set two scores 2
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players set @s scores 0
# 1 min -> 1 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s survival_all
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd /= minutes scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 煤炭使用 12 个 -> 1 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s coal
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd /= twelve scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 铁使用 4 个 -> 1 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s iron
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd /= four scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 金使用 6 个 -> 1 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s gold
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd /= six scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 钻石使用 1 个 -> 3 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s diamond
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd *= three scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 合金使用 1 个 -> 15 分
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd = @s netherite
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scoreswilladd *= fifteen scores
execute at @s[scores={title_level=0,endtitle=1}] as @s run scoreboard players operation @s scores += @s scoreswilladd
# 每一等级加分
execute at @s[scores={title_level=0,endtitle=1,level=1}] as @s run scoreboard players add @s scores 1
execute at @s[scores={title_level=0,endtitle=1,level=2}] as @s run scoreboard players add @s scores 2
execute at @s[scores={title_level=0,endtitle=1,level=3}] as @s run scoreboard players add @s scores 3
execute at @s[scores={title_level=0,endtitle=1,level=4}] as @s run scoreboard players add @s scores 4
execute at @s[scores={title_level=0,endtitle=1,level=5}] as @s run scoreboard players add @s scores 5
execute at @s[scores={title_level=0,endtitle=1,level=6}] as @s run scoreboard players add @s scores 6
execute at @s[scores={title_level=0,endtitle=1,level=7}] as @s run scoreboard players add @s scores 7
# 英雄 -> 100 分
execute at @s[scores={title_level=0,endtitle=1},tag=hero] as @s run scoreboard players add @s scores 100
# 作弊者 -> /10
execute at @s[scores={title_level=0,endtitle=1},tag=cheat] as @s run scoreboard players operation @s scores /= ten scores
# 虚荣者 -> /2
execute at @s[scores={title_level=0,endtitle=1},tag=hero_cheat] as @s run scoreboard players operation @s scores /= two scores