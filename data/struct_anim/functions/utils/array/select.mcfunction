# array_select uses context
# {storage: "name", path: "some.path", filter: {key: "some_key"}}
# Moves filtered element at the end of array (-1)
# Returns #array_select.has_element struct_anim.int

function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
execute if score #array_select.has_element struct_anim.int matches 0 run return 0

$execute store success score #array_select.differs struct_anim.int run data modify storage $(storage) $(path)_selected set from storage $(storage) $(path)[$(filter)]
execute if score #array_select.differs struct_anim.int matches 0 run return 1

$data remove storage $(storage) $(path)[$(filter)]
$data modify storage $(storage) $(path) append from storage $(storage) $(path)_selected
