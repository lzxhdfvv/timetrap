# end
# 玩家结束后的提示
execute at @s[scores={time_seconds=0}] as @s run scoreboard players set @s title_level 0
execute at @s[scores={time_seconds=0,endtitle=!33..}] as @s run scoreboard players add @s endtitle 1
execute at @s[scores={title_level=0,endtitle=1}] as @s run title @s times 1 1000 1
execute at @s[scores={title_level=0,endtitle=1}] as @s run title @s times 1 1000 1
execute at @s[scores={title_level=0,endtitle=1}] as @s run effect @s blindness 31 99 true
execute at @s[scores={title_level=0,endtitle=1}] as @s run effect @s slowness 31 99 true
execute at @s[scores={time_seconds=0}] as @s run scoreboard players set @s title_level 0
execute at @s[scores={title_level=0,endtitle=1}] as @s run title @s times 1 1000 1
execute at @s[scores={title_level=0,endtitle=37}] as @s run title @s times 10 70 20
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
execute at @s[scores={title_level=0,endtitle=33}] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§c游戏结束。"}]}
execute at @s[scores={title_level=0,endtitle=1..32}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。"}]}
execute at @s[scores={title_level=0,endtitle=33..,survival_minutes=0..9,survival_seconds=0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=33..,survival_minutes=0..9,survival_seconds=!0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=33..,survival_minutes=!0..9,survival_seconds=0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§60"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}
execute at @s[scores={title_level=0,endtitle=33..,survival_minutes=!0..9,survival_seconds=!0..9}] as @s run titleraw @s actionbar {"rawtext":[{"text":"§l§c游戏结束。\n§l§b存活 §r§l§6"},{"score":{"name":"@s","objective":"survival_hours"}},{"text":"§r§f 时§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_minutes"}},{"text":"§r§f 分§f， §r§l§6"},{"score":{"name":"@s","objective":"survival_seconds"}},{"text":"§r§f 秒§f。"}]}