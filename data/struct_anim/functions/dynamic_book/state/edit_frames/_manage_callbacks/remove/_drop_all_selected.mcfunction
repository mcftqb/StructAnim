$execute store success score #callbacks_management.remove.last.hasAny struct_anim.int if data storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)
execute unless score #callbacks_management.remove.last.hasAny struct_anim.int matches 1 run tellraw @s {"text": "Nothing to remove", "color": "red"}
execute unless score #callbacks_management.remove.last.hasAny struct_anim.int matches 1 run return 0

$data remove storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)
function #struct_anim:callbacks/group
tellraw @s {"text": "Removed all selected callbacks!", "color": "gold"}