scoreboard players reset #callbacks_management.paste.hasAny struct_anim.int
execute store success score #callbacks_management.paste.hasAny struct_anim.int if data storage struct_anim:animations root.suggestions[-1].callback.buffer.list[0]
execute unless score #callbacks_management.paste.hasAny struct_anim.int matches 1 run tellraw @s {"text": "Nothing to paste", "color": "red"}
