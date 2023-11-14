data modify storage struct_anim:utils root.ctx.array_upsert set value {storage: "struct_anim:id", path: "root.players", filter: {}, value_path:".uuid"}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.name set from storage struct_anim:utils root.ctx.set_player_name.name

data modify storage struct_anim:utils root.ctx.array_upsert.value set from entity @s UUID

function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
