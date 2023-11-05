execute unless data storage struct_anim:utils root.args.str.concat.values[0] run return 0

data modify storage struct_anim:utils root.ctx.str.concat.value set from storage struct_anim:utils root.args.str.concat.values[0]
function struct_anim:utils/str/concat/_concat with storage struct_anim:utils root.ctx.str.concat

data remove storage struct_anim:utils root.args.str.concat.values[0]
function struct_anim:utils/str/concat/_step