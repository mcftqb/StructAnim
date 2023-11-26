function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

execute unless data storage struct_anim:animations root.suggestions[-1].callback.buffer.list[0] run tellraw @s {"text": "Callback clipboard is empty, nothing to export, use Copy, to fill it", "color": "red"}
execute unless data storage struct_anim:animations root.suggestions[-1].callback.buffer.list[0] run return 0

data modify storage struct_anim:utils root.args.export.callbacks.buffer set from storage struct_anim:animations root.suggestions[-1].callback.buffer

data modify storage struct_anim:utils root.args.str.paginate.separator set value "; "
data modify storage struct_anim:utils root.args.str.paginate.values set from storage struct_anim:animations root.suggestions[-1].callback.buffer.list
data modify storage struct_anim:utils root.args.str.paginate.page_size set value 266
function struct_anim:utils/str/paginate

data modify storage struct_anim:utils root.args.export.callbacks.pages set value []
execute if data storage struct_anim:utils root.return.str.paginate.result[1] run data modify storage struct_anim:utils root.args.export.callbacks.pages append value 'Next page contains all callbacks unwrapped, so it can be copy&pasted easely'
execute if data storage struct_anim:utils root.return.str.paginate.result[1] run data modify storage struct_anim:utils root.args.export.callbacks.pages append from storage struct_anim:utils root.return.str.paginate.text
execute if data storage struct_anim:utils root.return.str.paginate.result[1] run data modify storage struct_anim:utils root.args.export.callbacks.pages append value 'Next page contains callbacks hard-wrapped, so it can be read'
data modify storage struct_anim:utils root.args.export.callbacks.pages append from storage struct_anim:utils root.return.str.paginate.result[]
execute store result storage struct_anim:utils root.args.export.callbacks.count int 1 run data get storage struct_anim:animations root.suggestions[-1].callback.buffer.list

loot give @s loot struct_anim:export/callbacks
tellraw @s {"text": "Callback clipboard successfully exported!", "color": "gold"}