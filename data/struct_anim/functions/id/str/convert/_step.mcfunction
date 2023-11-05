execute unless data storage struct_anim:utils root.args.id_to_str.values[0] run return 0

data modify storage struct_anim:utils root.ctx.id_to_str.i set from storage struct_anim:utils root.args.id_to_str.values[0]
function struct_anim:id/str/convert/__step with storage struct_anim:utils root.ctx.id_to_str

data remove storage struct_anim:utils root.args.id_to_str.values[0]
function struct_anim:id/str/convert/_step