function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

execute unless data entity @s SelectedItem.tag.struct_anim_buffer.list[0] run tellraw @s {"text": "No import source found, put the exported book in the main hand", "color": "red"}
execute unless data entity @s SelectedItem.tag.struct_anim_buffer.list[0] run return 0

data modify storage struct_anim:animations root.suggestions[-1].callback.buffer set from entity @s SelectedItem.tag.struct_anim_buffer
tellraw @s {"text": "Callback clipboard successfully imported!", "color": "gold"}
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/start