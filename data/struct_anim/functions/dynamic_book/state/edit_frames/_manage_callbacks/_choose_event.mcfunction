tellraw @s [{"text":"Select event:"},{"text":" Step ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{type: \"step\"}}"}},{"text":"|"},{"text":" Start ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{type: \"start\"}}"}},{"text":"|"},{"text":" End ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{type: \"end\"}}"}},{"text":"|"},{"text":" Edge ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{type: \"edge\"}}"}},{"text": "["},{"nbt": "root.suggestions[-1].callback.type", "storage": "struct_anim:animations", "color": "dark_gray"},{"text": "]"}]

tellraw @s [{"text":"Select subtype:"},{"text":" Any ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{path: \"any\"}}"}},{"text":"|"},{"text":" Ongoing ","color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/update {value:{path: \"ongoing\"}}"}},{"text": "["},{"nbt": "root.suggestions[-1].callback.path", "storage": "struct_anim:animations", "color": "dark_gray"},{"text": "]"}]