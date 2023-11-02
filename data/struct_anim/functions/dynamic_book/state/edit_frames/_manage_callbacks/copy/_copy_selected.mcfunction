$execute store success score #callbacks_management.copy.selected.hasAny struct_anim.int if data storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)
execute unless score #callbacks_management.copy.selected.hasAny struct_anim.int matches 1 run tellraw @s {"text": "Nothing to copy", "color": "red"}
execute unless score #callbacks_management.copy.selected.hasAny struct_anim.int matches 1 run return 0

$data modify storage struct_anim:animations root.suggestions[-1].callback.buffer.list set from storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)
tellraw @s {"text": "Copied selected callbacks!", "color": "gold"}