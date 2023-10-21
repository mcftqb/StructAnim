$execute if data storage $(storage) $(path)[-1]$(filter) run return 0

data remove storage struct_anim:utils root.tmp
$data modify storage struct_anim:utils root.tmp set from storage $(storage) $(path)[$(filter)]

$data remove storage $(storage) $(path)[$(filter)]
$data modify storage $(storage) $(path) append from storage struct_anim:utils root.tmp
