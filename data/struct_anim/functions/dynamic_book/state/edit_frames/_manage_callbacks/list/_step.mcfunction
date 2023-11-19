execute unless data storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0] run return 0

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/list/__step

data remove storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0]
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/list/_step