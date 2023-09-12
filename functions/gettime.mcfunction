# gettime
# 获取时间
execute @s ~ ~ ~ tag @s remove noup
execute @s ~ ~ ~ tag @s remove notime
execute @s[scores={time_seconds=!0}] ~ ~ ~ title @s times 10 70 20
# 获得 hero 标签
execute @s[tag=!getherotitle,hasitem={item=dragon_egg}] ~ ~ ~ scoreboard players operation @s ishero = ishero ishero
# 英雄
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=!hero] ~ ~ ~ tag @s add hero_pro
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=!hero] ~ ~ ~ tag @s add hero
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ scoreboard players operation @s time_seconds *= double ishero
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f一种奇怪的感觉涌上您的心头。"}]}
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ tag @s add getherotitle
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ tag @s add noup
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ tag @s add notime
execute @s[tag=getherotitle,hasitem={item=dragon_egg},scores={ishero=0},tag=hero] ~ ~ ~ scoreboard players set ishero ishero 1
# 追随者
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=1},tag=!hero] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=1},tag=!hero] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f这个世界需要先驱，而不是抄袭者。"}]}
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=1},tag=!hero] ~ ~ ~ tag @s add notime
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=1},tag=!hero] ~ ~ ~ tag @s add noup
execute @s[tag=!getherotitle,hasitem={item=dragon_egg},scores={ishero=1},tag=!hero] ~ ~ ~ tag @s add getherotitle
# 设置玩家的倍率
# 生存时间设置
execute @s[scores={survival_all=0..30}] ~ ~ ~ scoreboard players set @s magnification 5
execute @s[scores={survival_all=31..60}] ~ ~ ~ scoreboard players set @s magnification 4
execute @s[scores={survival_all=61..120}] ~ ~ ~ scoreboard players set @s magnification 3
execute @s[scores={survival_all=121..600}] ~ ~ ~ scoreboard players set @s magnification 2
execute @s[scores={survival_all=600..}] ~ ~ ~ scoreboard players set @s magnification 1
# 累计加时次数加成
execute @s[scores={timeaddcount=0}] ~ ~ ~ scoreboard players add @s magnification 10
execute @s[scores={timeaddcount=1..4}] ~ ~ ~ scoreboard players add @s magnification 3
execute @s[scores={timeaddcount=5..9}] ~ ~ ~ scoreboard players add @s magnification 1
# 反向倍率设定
execute @s ~ ~ ~ scoreboard players set @s remagnification 1
# 作弊者
execute @s[tag=cheat] ~ ~ ~ scoreboard players operation @s remagnification *= ten remagnification
# 虚荣者
execute @s[tag=hero_cheat] ~ ~ ~ scoreboard players operation @s remagnification *= double remagnification
# 判断某个用户是否可以消耗某种矿物
# 煤炭
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_coal
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = coal timeconfig
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_coal
# 铁锭
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_iron
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = iron timeconfig
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron
# 铜锭
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_copper
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = copper timeconfig
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_copper
# 金锭
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_gold
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = gold timeconfig
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold
# 钻石
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_diamond
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = diamond timeconfig
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_diamond
# 下界合金
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_netherite
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = netherite timeconfig
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_netherite
# 粗铜
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_raw_copper
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_copper timeconfig
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_copper
# 粗铁
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_raw_iron
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_iron timeconfig
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_iron
# 粗金
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_raw_gold
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_gold timeconfig
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_raw_gold
# 铁粒
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_iron_nugget
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = iron_nugget timeconfig
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_iron_nugget
# 金粒
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_gold_nugget
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = gold_nugget timeconfig
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_gold_nugget
# 绿宝石
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s remove cn_emerald
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime = @s time_seconds
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = emerald timeconfig
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s canaddtime += @s timewilladd
execute @s[tag=!notime,tag=!hero,scores={level=1,canaddtime=1801..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=2,canaddtime=2101..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=3,canaddtime=2401..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=4,canaddtime=2701..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=5,canaddtime=3001..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=6,canaddtime=3301..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=!hero,scores={level=7,canaddtime=3601..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=1,canaddtime=3601..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=2,canaddtime=4201..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=3,canaddtime=4801..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=4,canaddtime=5401..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=5,canaddtime=6001..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=6,canaddtime=6601..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
execute @s[tag=!notime,tag=hero,scores={level=7,canaddtime=7201..},hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add cn_emerald
# 消耗并且提示
# 煤炭
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = coal timeconfig
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§0煤炭 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s coal 1
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s coal 0 1
execute @s[tag=!notime,tag=cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 铁锭
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = iron timeconfig
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§f铁锭 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s iron 1
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s iron_ingot 0 1
execute @s[tag=!notime,tag=cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 铜锭
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = copper timeconfig
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§2铜锭 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s copper 1
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s copper_ingot 0 1
execute @s[tag=!notime,tag=cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 金锭
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = gold timeconfig
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§e金锭 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s gold 1
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s gold_ingot 0 1
execute @s[tag=!notime,tag=cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 钻石
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = diamond timeconfig
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 颗 §l§b钻石 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s diamond 1
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s diamond 0 1
execute @s[tag=!notime,tag=cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 下界合金
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = netherite timeconfig
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§4下界合金 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s netherite 1
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s netherite_ingot 0 1
execute @s[tag=!notime,tag=cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗铜
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_copper timeconfig
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§2粗铜 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s raw_copper 1
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s raw_copper 0 1
execute @s[tag=!notime,tag=cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗铁
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_iron timeconfig
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§f粗铁 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s raw_iron 1
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s raw_iron 0 1
execute @s[tag=!notime,tag=cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗金
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = raw_gold timeconfig
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§e粗金 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s raw_gold 1
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s raw_gold 0 1
execute @s[tag=!notime,tag=cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 铁粒
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = iron_nugget timeconfig
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 粒 §l§f铁粒 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s iron_nugget 1
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s iron_nugget 0 1
execute @s[tag=!notime,tag=cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_iron_nugget,hasitem={item=iron_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 金粒
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = gold_nugget timeconfig
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 粒 §l§e金粒 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s gold_nugget 1
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s gold_nugget 0 1
execute @s[tag=!notime,tag=cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_gold_nugget,hasitem={item=gold_nugget,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 绿宝石
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd = emerald timeconfig
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd *= @s magnification
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s timewilladd /= @s remagnification
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players operation @s time_seconds += @s timewilladd
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 颗 §l§a绿宝石 §r§f换取了 §l§6"},{"score":{"name":"@s","objective":"timewilladd"}},{"text":" 秒 §r§f的生存时间。"}]}
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ tag @s add noup
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s emerald 1
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ scoreboard players add @s timeaddcount 1
execute @s[tag=!notime,tag=!cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ clear @s emerald 0 1
execute @s[tag=!notime,tag=cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l"}]}
execute @s[tag=!notime,tag=cn_emerald,hasitem={item=emerald,location=slot.weapon.mainhand},rx=-85] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 提升等级
execute @s[tag=!noup] ~ ~ ~ function levelupper
