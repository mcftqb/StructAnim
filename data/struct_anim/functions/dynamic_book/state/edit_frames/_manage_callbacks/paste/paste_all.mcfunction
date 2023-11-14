function struct_anim:animator/selection/get
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/paste/_check_buffer
execute unless score #callbacks_management.paste.hasAny struct_anim.int matches 1 run return 0

data modify storage struct_anim:animations root.animators[-1].callbacks set from storage struct_anim:animations root.suggestions[-1].callback.buffer.structure 
function #struct_anim:callbacks/group
tellraw @s {"text": "Replaced all callbacks!", "color": "gold"}