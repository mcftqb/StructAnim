execute unless data storage struct_anim:utils root.args.id_to_str.all.values[0] run return 0

data modify storage struct_anim:utils root.args.id_to_str.id set from storage struct_anim:utils root.args.id_to_str.all.values[0]
function struct_anim:id/str/convert/run
data modify storage struct_anim:utils root.args.id_to_str.all.result append from storage struct_anim:utils root.return.id_to_str.result

data remove storage struct_anim:utils root.args.id_to_str.all.values[0]
function struct_anim:id/str/convert/_all_step