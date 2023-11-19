execute unless data storage struct_anim:utils root.args.str.concat.values[0] run return 0

# Escape value
data modify storage struct_anim:utils root.args.str.escape.value set from storage struct_anim:utils root.args.str.concat.values[0]
function struct_anim:utils/str/escape/run
data modify storage struct_anim:utils root.ctx.str.concat.value set from storage struct_anim:utils root.return.str.escape.result

# Escape result
data modify storage struct_anim:utils root.args.str.escape.value set from storage struct_anim:utils root.ctx.str.concat.result
function struct_anim:utils/str/escape/run
data modify storage struct_anim:utils root.ctx.str.concat.result set from storage struct_anim:utils root.return.str.escape.result

function struct_anim:utils/str/concat/_concat with storage struct_anim:utils root.ctx.str.concat

data remove storage struct_anim:utils root.args.str.concat.values[0]
function struct_anim:utils/str/concat/_step