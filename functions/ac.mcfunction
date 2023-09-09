# ac
execute at @s[scores={time_seconds=1..},tag=start,m=creative,tag=!cheat] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[scores={time_seconds=1..},tag=start,m=creative,tag=!cheat] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§4当您凝望深渊的时候，深渊也在凝望您。"}]}
execute at @s[scores={time_seconds=1..},tag=start,m=creative] as @s run tag @s add cheat
# 游戏模式
execute at @s[scores={time_seconds=1..}] as @s run gamemode survival @s[m=!survival]
execute at @s[scores={time_seconds=!1..}] as @s run gamemode spectator @s[m=!spectator]
# ac-protect
execute at @s[tag=cheat_pro] as @s run tag @s add cheat
execute at @s[tag=cheat] as @s run tag @s add cheat_pro
# hero-protect
execute at @s[tag=!hero_pro,tag=hero,tag=!hero_cheat] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!hero_pro,tag=hero,tag=!hero_cheat] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§4欲戴其冠，必先承其重。"}]}
execute at @s[tag=!hero_pro,tag=hero] as @s run tag @s add hero_cheat
execute at @s[tag=!hero_pro,tag=hero] as @s run tag @s remove hero
execute at @s[tag=hero_pro,tag=!hero] as @s run tag @s remove hero_pro