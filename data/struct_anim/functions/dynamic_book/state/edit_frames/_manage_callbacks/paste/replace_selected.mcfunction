function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/paste/_check_buffer
execute unless score #callbacks_management.paste.hasAny struct_anim.int matches 1 run return 0

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/remove/drop_all_selected
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/paste/paste_selected