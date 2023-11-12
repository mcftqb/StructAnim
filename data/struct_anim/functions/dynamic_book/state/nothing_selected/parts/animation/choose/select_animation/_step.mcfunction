execute unless data storage struct_anim:utils root.args.animation.selection.options[0] run return 0

function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/select_animation/__step with storage struct_anim:utils root.args.animation.selection.options[0]

data remove storage struct_anim:utils root.args.animation.selection.options[0]
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/select_animation/_step