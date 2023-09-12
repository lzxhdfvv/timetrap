# levelupper
# 等级的提升
execute @s[tag=!noup] ~ ~ ~ tag @s remove nospecialtitle
execute @s[tag=!noup,scores={level=1},lm=10] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=1},lm=10] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2100秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=1},lm=10] ~ ~ ~ scoreboard players set @s level 2
execute @s[tag=!noup,scores={level=1},lm=10] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!noup,scores={level=2},lm=20] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=2},lm=20] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2400秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=2},lm=20] ~ ~ ~ scoreboard players set @s level 3
execute @s[tag=!noup,scores={level=2},lm=20] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!noup,scores={level=3},lm=30] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=3},lm=30] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b2700秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=3},lm=30] ~ ~ ~ scoreboard players set @s level 4
execute @s[tag=!noup,scores={level=3},lm=30] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!noup,scores={level=4},lm=40] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=4},lm=40] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3000秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=4},lm=40] ~ ~ ~ scoreboard players set @s level 5
execute @s[tag=!noup,scores={level=4},lm=40] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!noup,scores={level=5},lm=50] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=5},lm=50] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3300秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=5},lm=50] ~ ~ ~ scoreboard players set @s level 6
execute @s[tag=!noup,scores={level=5},lm=50] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!noup,scores={level=6},lm=50] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!noup,scores={level=6},lm=50] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f等级提升，您现在共可存储 §l§b3600秒 §r§f的生存时间。"}]}
execute @s[tag=!noup,scores={level=6},lm=50] ~ ~ ~ scoreboard players set @s level 7
execute @s[tag=!noup,scores={level=6},lm=50] ~ ~ ~ tag @s add nospecialtitle
execute @s[tag=!nospecialtitle] ~ ~ ~ function specialtitle
