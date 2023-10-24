# array_has uses context
# {storage: "name", path: "some.path", filter: {key: "some_key"}}
# Moves filtered element at the end of array (-1)
# Returns #array_select.has_element struct_anim.int

$execute store success score #array_select.has_element struct_anim.int if data storage $(storage) $(path)[$(filter)]
