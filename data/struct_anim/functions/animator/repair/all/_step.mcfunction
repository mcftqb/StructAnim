execute unless data storage struct_anim:utils root.args.animator_repair_all.ids[0] run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.animator_repair_all.ids[0]
function struct_anim:animator/get
function struct_anim:animator/repair/run

data remove storage struct_anim:utils root.args.animator_repair_all.ids[0]
function struct_anim:animator/repair/all/_step