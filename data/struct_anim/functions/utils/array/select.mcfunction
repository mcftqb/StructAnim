# array_select uses context
# {storage: "name", path: "some.path", filter: {key: "some_key"}}
# Moves filtered element at the end of array (-1)
# Returns #array_select.has_element struct_anim.int

function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
execute if score #array_select.has_element struct_anim.int matches 0 run return 0

$data modify storage $(storage) $(path)_selected set from storage $(storage) $(path)[$(filter)]
$data remove storage $(storage) $(path)[$(filter)]
$data modify storage $(storage) $(path) append from storage $(storage) $(path)_selected
