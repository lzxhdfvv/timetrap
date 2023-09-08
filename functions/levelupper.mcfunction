# levelupper
# 等级的提升
execute at @s[tag=!noup] as @s run tag @s remove nospecialtitle
execute at @s[tag=!noup,scores={level=1},lm=10] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=1},lm=10] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2100秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=1},lm=10] as @s run scoreboard players set @s level 2
execute at @s[tag=!noup,scores={level=1},lm=10] as @s run tag @s add nospecialtitle
execute at @s[tag=!noup,scores={level=2},lm=20] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=2},lm=20] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2400秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=2},lm=20] as @s run scoreboard players set @s level 3
execute at @s[tag=!noup,scores={level=2},lm=20] as @s run tag @s add nospecialtitle
execute at @s[tag=!noup,scores={level=3},lm=30] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=3},lm=30] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2700秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=3},lm=30] as @s run scoreboard players set @s level 4
execute at @s[tag=!noup,scores={level=3},lm=30] as @s run tag @s add nospecialtitle
execute at @s[tag=!noup,scores={level=4},lm=40] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=4},lm=40] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3000秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=4},lm=40] as @s run scoreboard players set @s level 5
execute at @s[tag=!noup,scores={level=4},lm=40] as @s run tag @s add nospecialtitle
execute at @s[tag=!noup,scores={level=5},lm=50] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=5},lm=50] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3300秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=5},lm=50] as @s run scoreboard players set @s level 6
execute at @s[tag=!noup,scores={level=5},lm=50] as @s run tag @s add nospecialtitle
execute at @s[tag=!noup,scores={level=6},lm=50] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!noup,scores={level=6},lm=50] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3600秒 §r§f的生存时间。"}]}
execute at @s[tag=!noup,scores={level=6},lm=50] as @s run scoreboard players set @s level 7
execute at @s[tag=!noup,scores={level=6},lm=50] as @s run tag @s add nospecialtitle
execute at @s[tag=!nospecialtitle] as @s run function specialtitle
