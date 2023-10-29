function struct_anim:animator/selection/get

execute store success score #callbacks_management.remove.last.hasAny struct_anim.int if data storage struct_anim:animations root.animators[-1].callbacks.all[0]
execute unless score #callbacks_management.remove.last.hasAny struct_anim.int matches 1 run tellraw @s {"text": "Nothing to remove", "color": "red"}
execute unless score #callbacks_management.remove.last.hasAny struct_anim.int matches 1 run return 0

data modify storage struct_anim:animations root.animators[-1].callbacks set value {}
tellraw @s {"text": "Removed all callbacks!", "color": "gold"}