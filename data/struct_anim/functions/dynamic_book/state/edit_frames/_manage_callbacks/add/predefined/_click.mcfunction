function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get
$function struct_anim:in/callback {f: 'function struct_anim:actions/$(f)'}
$tellraw @s [{"text": "Callback $(f) sucessfully added to ","color":"gold"}, {"nbt":"root.suggestions[-1].callback.type", "storage": "struct_anim:animations", "bold": true}, ".", {"nbt":"root.suggestions[-1].callback.path", "storage": "struct_anim:animations", "bold": true}]