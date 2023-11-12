execute unless data storage struct_anim:utils root.args.animator.selection.options[0] run return 0

data modify storage struct_anim:utils root.ctx.animator.selection set from storage struct_anim:utils root.args.animator.selection.options[0]
data modify storage struct_anim:utils root.ctx.animator.selection merge from storage struct_anim:utils root.args.animator.selection.options[0].controller
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/__step with storage struct_anim:utils root.ctx.animator.selection

data remove storage struct_anim:utils root.args.animator.selection.options[0]
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/_step