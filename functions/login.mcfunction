# login
scoreboard objectives add login1 dummy
execute at @a as @s run scoreboard players operation @s login1 = @s login 
scoreboard objectives remove login
scoreboard objectives add login dummy
execute at @a as @s run scoreboard players operation @s login = @s login1
execute at @a as @s run scoreboard players add @s login 0
execute at @a[scores={login=0}] as @s run tellraw @s {"rawtext":[{"text":"§l§e时间陷阱§f>>§r§f欢迎加入游戏。当前正在运行：时间陷阱。"}]}
execute at @a[scores={login=0}] as @s run tellraw @s {"rawtext":[{"text":"§l§e时间陷阱§f>>§r§f您需要挖掘矿物以换取生存的时间。手持矿物并抬头即可换取生存时间。"}]}
execute at @a[scores={login=0}] as @s run tellraw @s {"rawtext":[{"text":"§l§e时间陷阱§f>>§r§f欲买桂花同载酒，终不似，少年游。 摘录自 刘过《唐多令·芦叶满汀洲》。"}]}
execute at @a[scores={login=0}] as @s run tellraw @s {"rawtext":[{"text":"§l§e时间陷阱§f>>§r§f祝您游玩愉快。"}]}
execute at @a[scores={login=0}] as @s run scoreboard players set @s login 1
scoreboard objectives remove login1