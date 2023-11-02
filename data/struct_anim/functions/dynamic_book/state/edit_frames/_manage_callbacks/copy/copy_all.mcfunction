function struct_anim:animator/selection/get
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get
function #struct_anim:callbacks/group

execute store success score #callbacks_management.copy.all.hasAny struct_anim.int if data storage struct_anim:animations root.animators[-1].callbacks.all[0]
execute unless score #callbacks_management.copy.all.hasAny struct_anim.int matches 1 run tellraw @s {"text": "Nothing to copy", "color": "red"}
execute unless score #callbacks_management.copy.all.hasAny struct_anim.int matches 1 run return 0

data modify storage struct_anim:animations root.suggestions[-1].callback.buffer.list set from storage struct_anim:animations root.animators[-1].callbacks.all
data modify storage struct_anim:animations root.suggestions[-1].callback.buffer.structure set from storage struct_anim:animations root.animators[-1].callbacks
data remove storage struct_anim:animations root.suggestions[-1].callback.buffer.structure.all
tellraw @s {"text": "Copied all callbacks!", "color": "gold"}