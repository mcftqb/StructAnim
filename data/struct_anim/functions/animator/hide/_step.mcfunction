execute unless data storage struct_anim:utils root.args.animator.hide.all.values[0] run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.animator.hide.all.values[0]
function struct_anim:animator/get
function struct_anim:animator/hide/run

data remove storage struct_anim:utils root.args.animator.hide.all.values[0]
function struct_anim:animator/hide/_step