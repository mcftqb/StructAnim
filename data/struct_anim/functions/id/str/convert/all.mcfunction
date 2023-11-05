# id_to_str.all uses args (values: int[])
data modify storage struct_anim:utils root.args.id_to_str.all.result set value []

function struct_anim:id/str/convert/_all_step

data modify storage struct_anim:utils root.args.str.concat.values set from storage struct_anim:utils root.args.id_to_str.all.result
function struct_anim:utils/str/concat/run
data modify storage struct_anim:utils root.return.id_to_str.all.result set from storage struct_anim:utils root.return.str.concat.result