execute if data storage struct_anim:utils root.args.str.to_arr{value: ""} run return 0

$data modify storage struct_anim:utils root.return.str.to_arr.result append string storage struct_anim:utils root.args.str.to_arr.value 0 $(size)
execute store result score #str.to_arr.str_size struct_anim.int run data get storage struct_anim:utils root.args.str.to_arr.value
execute if score #str.to_arr.str_size struct_anim.int < #str.to_arr.slice_size struct_anim.int run data modify storage struct_anim:utils root.return.str.to_arr.result append from storage struct_anim:utils root.args.str.to_arr.value
execute if score #str.to_arr.str_size struct_anim.int <= #str.to_arr.slice_size struct_anim.int run return 0
$data modify storage struct_anim:utils root.args.str.to_arr.value set string storage struct_anim:utils root.args.str.to_arr.value $(size)

function struct_anim:utils/str/to_arr/_step with storage struct_anim:utils root.ctx.str.to_arr