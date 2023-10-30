function struct_anim:id/player/get_name

data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:dynbook", path: "root.books", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.player set from storage struct_anim:id root.players[-1].name
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select

execute unless score #array_select.has_element struct_anim.int matches 1 run function struct_anim:dynamic_book/selection/_set