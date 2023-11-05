#define storage struct_anim:id "ID's storage"

execute unless data storage struct_anim:id root run data modify storage struct_anim:id root set value {}

data modify storage struct_anim:utils root.args.str.to_arr.value set value "0123456789abcdefghijklmnopqrstuvwxyz"
function struct_anim:utils/str/to_arr/run
data modify storage struct_anim:utils root.args.id_to_str.alphabit set from storage struct_anim:utils root.return.str.to_arr.result
