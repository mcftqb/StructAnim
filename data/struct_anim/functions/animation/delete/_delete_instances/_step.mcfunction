execute unless data storage struct_anim:utils root.args.animation.delete.values[0] run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.animation.delete.values[0]
function struct_anim:animator/get
execute if data storage struct_anim:animations root.animations[-1].frames[0] run function struct_anim:animation/edition/fill/selected
function struct_anim:animator/delete/run

data remove storage struct_anim:utils root.args.animation.delete.values[0]
function struct_anim:animation/delete/_delete_instances/_step