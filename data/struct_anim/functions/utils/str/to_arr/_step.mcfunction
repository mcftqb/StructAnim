execute if data storage struct_anim:utils root.args.str.to_arr{value: ""} run return 0

data modify storage struct_anim:utils root.return.str.to_arr.result append string storage struct_anim:utils root.args.str.to_arr.value 0 1
data modify storage struct_anim:utils root.args.str.to_arr.value set string storage struct_anim:utils root.args.str.to_arr.value 1

function struct_anim:utils/str/to_arr/_step