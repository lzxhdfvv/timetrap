# end
# 玩家结束后的提示
execute @s[scores={time_seconds=0}] ~ ~ ~ scoreboard players set @s title_level 0
execute @s[scores={time_seconds=0,endtitle=!42..}] ~ ~ ~ scoreboard players add @s endtitle 1
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ effect @s blindness 40 99 true
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ effect @s slowness 40 99 true
execute @s[scores={time_seconds=0}] ~ ~ ~ scoreboard players set @s title_level 0
execute @s[scores={title_level=0,endtitle=1,time_seconds=0}] ~ ~ ~ title @s times 1 1000 1
execute @s[scores={title_level=0,endtitle=40..,time_seconds=0}] ~ ~ ~ title @s times 10 70 20
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=5}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=9}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=13}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=15}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=19}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=23}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=25}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=29}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=33}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=37}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={title_level=0,endtitle=41}] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
# 玩家的提示
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f努力半生，"}]}
execute @s[scores={title_level=0,endtitle=5}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f最终发现————"}]}
execute @s[scores={title_level=0,endtitle=9}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f只是为了活着。"}]}
execute @s[scores={title_level=0,endtitle=13}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f......"}]}
execute @s[scores={title_level=0,endtitle=15}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f人面不知何处去，桃花依旧笑春风。"}]}
execute @s[scores={title_level=0,endtitle=19}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f摘录自 崔护《题都城南庄》。"}]}
execute @s[scores={title_level=0,endtitle=23}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f......"}]}
execute @s[scores={title_level=0,endtitle=25}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您总共存活"}]}
execute @s[scores={title_level=0,endtitle=29,survival_minutes=0..9,survival_seconds=0..9}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute @s[scores={title_level=0,endtitle=29,survival_minutes=0..9,survival_seconds=!0..9}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute @s[scores={title_level=0,endtitle=29,survival_minutes=!0..9,survival_seconds=0..9}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute @s[scores={title_level=0,endtitle=29,survival_minutes=!0..9,survival_seconds=!0..9}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute @s[scores={title_level=0,endtitle=33}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f得分"}]}
execute @s[scores={title_level=0,endtitle=37}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute @s[scores={title_level=0,endtitle=41}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§c游戏结束。"}]}
execute @s[scores={title_level=0,endtitle=1..40}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。"}]}
execute @s[scores={title_level=0,endtitle=41..,survival_minutes=0..9,survival_seconds=0..9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute @s[scores={title_level=0,endtitle=41..,survival_minutes=0..9,survival_seconds=!0..9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute @s[scores={title_level=0,endtitle=41..,survival_minutes=!0..9,survival_seconds=0..9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
execute @s[scores={title_level=0,endtitle=41..,survival_minutes=!0..9,survival_seconds=!0..9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。\n§l§b得分 §l§a"},{"score":{"name":"@s","objective":"scores"}},{"text":"§r§f 分。"}]}
# 得分计算
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set minutes scores 60
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set twelve scores 12
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set four scores 4
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set six scores 6
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set three scores 3
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set fifteen scores 15
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set ten scores 10
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set two scores 2
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players set @s scores 0
# 1 min -> 1 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s survival_all
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd /= minutes scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 煤炭使用 12 个 -> 1 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s coal
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd /= twelve scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 铁使用 4 个 -> 1 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s iron
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd /= four scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 金使用 6 个 -> 1 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s gold
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd /= six scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 钻石使用 1 个 -> 3 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s diamond
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd *= three scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 合金使用 1 个 -> 15 分
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd = @s netherite
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scoreswilladd *= fifteen scores
execute @s[scores={title_level=0,endtitle=1}] ~ ~ ~ scoreboard players operation @s scores += @s scoreswilladd
# 每一等级加分
execute @s[scores={title_level=0,endtitle=1,level=1}] ~ ~ ~ scoreboard players add @s scores 1
execute @s[scores={title_level=0,endtitle=1,level=2}] ~ ~ ~ scoreboard players add @s scores 2
execute @s[scores={title_level=0,endtitle=1,level=3}] ~ ~ ~ scoreboard players add @s scores 3
execute @s[scores={title_level=0,endtitle=1,level=4}] ~ ~ ~ scoreboard players add @s scores 4
execute @s[scores={title_level=0,endtitle=1,level=5}] ~ ~ ~ scoreboard players add @s scores 5
execute @s[scores={title_level=0,endtitle=1,level=6}] ~ ~ ~ scoreboard players add @s scores 6
execute @s[scores={title_level=0,endtitle=1,level=7}] ~ ~ ~ scoreboard players add @s scores 7
# 英雄 -> 100 分
execute @s[scores={title_level=0,endtitle=1},tag=hero] ~ ~ ~ scoreboard players add @s scores 100
# 作弊者 -> /10
execute @s[scores={title_level=0,endtitle=1},tag=cheat] ~ ~ ~ scoreboard players operation @s scores /= ten scores
# 虚荣者 -> /2
execute @s[scores={title_level=0,endtitle=1},tag=hero_cheat] ~ ~ ~ scoreboard players operation @s scores /= two scores