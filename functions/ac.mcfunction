# ac
execute @s[scores={time_seconds=1..},tag=start,m=creative,tag=!cheat] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[scores={time_seconds=1..},tag=start,m=creative,tag=!cheat] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§4当您凝望深渊的时候，深渊也在凝望您。"}]}
execute @s[scores={time_seconds=1..},tag=start,m=creative] ~ ~ ~ tag @s add cheat
# 游戏模式
execute @s[scores={time_seconds=1..}] ~ ~ ~ gamemode survival @s[m=!survival]
execute @s[scores={time_seconds=!1..}] ~ ~ ~ gamemode adventure @s[m=!adventure]
# 【中国版专属】死亡后冒险模式会有的buff
execute @s[scores={time_seconds=!1..},m=adventure] ~ ~ ~ effect @s resistance 60 99
execute @s[scores={time_seconds=!1..},m=adventure] ~ ~ ~ effect @s weakness 60 99
execute @s[scores={time_seconds=!1..},m=adventure] ~ ~ ~ effect @s saturation 60 99
execute @s[scores={time_seconds=!1..},m=adventure] ~ ~ ~ effect @s instant_health 60 99
# ac-protect
execute @s[tag=cheat_pro] ~ ~ ~ tag @s add cheat
execute @s[tag=cheat] ~ ~ ~ tag @s add cheat_pro
# hero-protect
execute @s[tag=!hero_pro,tag=hero,tag=!hero_cheat] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!hero_pro,tag=hero,tag=!hero_cheat] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§4欲戴其冠，必先承其重。"}]}
execute @s[tag=!hero_pro,tag=hero] ~ ~ ~ tag @s add hero_cheat
execute @s[tag=!hero_pro,tag=hero] ~ ~ ~ tag @s remove hero
execute @s[tag=hero_pro,tag=!hero] ~ ~ ~ tag @s remove hero_pro