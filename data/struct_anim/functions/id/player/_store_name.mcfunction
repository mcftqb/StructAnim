data modify storage struct_anim:utils root.ctx.array_upsert set value {storage: "struct_anim:id", path: "root.players", filter: {}, value_path:"", value: {}}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.name set from storage struct_anim:utils root.ctx.set_player_name.name

data modify storage struct_anim:utils root.ctx.array_upsert.value.uuid set from entity @s UUID
data modify storage struct_anim:utils root.ctx.array_upsert.value.name set from storage struct_anim:utils root.ctx.set_player_name.name

function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
