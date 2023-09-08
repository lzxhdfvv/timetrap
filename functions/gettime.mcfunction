# gettime
# 获取时间
execute at @s as @s run tag @s remove noup
# 判断某个用户是否可以消耗某种矿物
# 煤炭
execute at @s as @s run tag @s remove cn_coal
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += coal timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_coal
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_coal
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_coal
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_coal
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_coal
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_coal
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_coal
# 铁锭
execute at @s as @s run tag @s remove cn_iron
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += iron timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_iron
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_iron
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_iron
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_iron
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_iron
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_iron
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_iron
# 铜锭
execute at @s as @s run tag @s remove cn_copper
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += copper timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_copper
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_copper
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_copper
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_copper
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_copper
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_copper
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_copper
# 金锭
execute at @s as @s run tag @s remove cn_gold
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += gold timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_gold
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_gold
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_gold
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_gold
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_gold
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_gold
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_gold
# 钻石
execute at @s as @s run tag @s remove cn_diamond
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += diamond timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_diamond
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_diamond
# 下界合金
execute at @s as @s run tag @s remove cn_netherite
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += netherite timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_netherite
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_netherite
# 粗铜
execute at @s as @s run tag @s remove cn_raw_copper
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += raw_copper timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_raw_copper
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_raw_copper
# 粗铁
execute at @s as @s run tag @s remove cn_raw_iron
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += raw_iron timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_raw_iron
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_raw_iron
# 粗金
execute at @s as @s run tag @s remove cn_raw_gold
execute at @s as @s run scoreboard players operation @s canaddtime = @s time_seconds
execute at @s as @s run scoreboard players operation @s canaddtime += raw_gold timeconfig
execute at @s[scores={level=1,canaddtime=1801..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=2,canaddtime=2101..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=3,canaddtime=2401..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=4,canaddtime=2701..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=5,canaddtime=3001..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=6,canaddtime=3301..}] as @s run tag @s add cn_raw_gold
execute at @s[scores={level=7,canaddtime=3601..}] as @s run tag @s add cn_raw_gold
# 消耗并且提示
# 煤炭
execute at @s[tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += coal timeconfig
execute at @s[tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§0煤炭 §r§f换取了 §l§6"},{"score":{"name":"coal","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run clear @s coal 0 1
execute at @s[tag=!cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s coal 1
execute at @s[tag=cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_coal,hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 铁锭
execute at @s[tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += iron timeconfig
execute at @s[tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§f铁锭 §r§f换取了 §l§6"},{"score":{"name":"iron","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run clear @s iron_ingot 0 1
execute at @s[tag=!cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s iron 1
execute at @s[tag=cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_iron,hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 铜锭
execute at @s[tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§2铜锭 §r§f换取了 §l§6"},{"score":{"name":"copper","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run clear @s copper_ingot 0 1
execute at @s[tag=!cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s copper 1
execute at @s[tag=cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_copper,hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 金锭
execute at @s[tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += gold timeconfig
execute at @s[tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§e金锭 §r§f换取了 §l§6"},{"score":{"name":"gold","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run clear @s gold_ingot 0 1
execute at @s[tag=!cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s gold 1
execute at @s[tag=cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_gold,hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 钻石
execute at @s[tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 颗 §l§b钻石 §r§f换取了 §l§6"},{"score":{"name":"diamond","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run clear @s diamond 0 1
execute at @s[tag=!cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s diamond 1
execute at @s[tag=cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_diamond,hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 下界合金
execute at @s[tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§4下界合金 §r§f换取了 §l§6"},{"score":{"name":"netherite","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run clear @s netherite_ingot 0 1
execute at @s[tag=!cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s netherite 1
execute at @s[tag=cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_netherite,hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗铜
execute at @s[tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§2粗铜 §r§f换取了 §l§6"},{"score":{"name":"raw_copper","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run clear @s raw_copper 0 1
execute at @s[tag=!cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s raw_copper 1
execute at @s[tag=cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_raw_copper,hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗铁
execute at @s[tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§f粗铁 §r§f换取了 §l§6"},{"score":{"name":"raw_iron","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run clear @s raw_iron 0 1
execute at @s[tag=!cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s raw_iron 1
execute at @s[tag=cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_raw_iron,hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 粗金
execute at @s[tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players operation @s time_seconds += diamond timeconfig
execute at @s[tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您消耗了 1 块 §l§e粗金 §r§f换取了 §l§6"},{"score":{"name":"raw_gold","objective":"timeconfig"}},{"text":" 秒 §r§f的生存时间。"}]}
execute at @s[tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run clear @s raw_gold 0 1
execute at @s[tag=!cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run scoreboard players add @s raw_gold 1
execute at @s[tag=cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute at @s[tag=cn_raw_gold,hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run titleraw @s subtitle {"rawtext":[{"text":"§r§f您剩余可储存的时间过少。"}]}
# 参与过的均不可以提升等级
execute at @s[hasitem={item=coal,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=iron_ingot,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=copper_ingot,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=gold_ingot,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=diamond,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=netherite_ingot,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=raw_copper,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=raw_iron,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[hasitem={item=raw_gold,location=slot.weapon.mainhand},rx=-85] as @s run tag @s add noup
execute at @s[tag=!noup] as @s run function levelupper
