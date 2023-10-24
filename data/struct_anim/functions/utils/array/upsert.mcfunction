# array_upsert uses context and context as args
# {storage: "name", path: "some.path", filter: {key: "some_key"}, value_path: ".other.path"}
# Updates filtered element or inserts new one at the end of array (-1)

$data modify storage $(storage) $(path)[$(filter)]$(value_path) set from storage struct_anim:utils root.ctx.array_upsert.value
