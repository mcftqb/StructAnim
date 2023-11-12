# array_filter uses context
# {storage: "name", path: "some.path", filter: {key: "some_key"}}
# Filters elements
# Returns result

data modify storage struct_anim:utils root.return.array_filter.result set value []
$data modify storage struct_anim:utils root.return.array_filter.result append from storage $(storage) $(path)[$(filter)]
