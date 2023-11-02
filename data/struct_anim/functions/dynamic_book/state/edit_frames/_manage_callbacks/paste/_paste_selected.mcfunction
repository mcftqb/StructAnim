function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/paste/_check_buffer
execute unless score #callbacks_management.paste.hasAny struct_anim.int matches 1 run return 0

$data modify storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path) append from storage struct_anim:animations root.suggestions[-1].callback.buffer.list[]
tellraw @s {"text": "Added selected callbacks!", "color": "gold"}