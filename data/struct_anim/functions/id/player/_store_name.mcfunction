function struct_anim:id/player/prefill
data modify storage struct_anim:utils root.ctx.array_upsert set from storage struct_anim:utils root.ctx.array_select
data modify storage struct_anim:utils root.ctx.array_upsert.value_path set value ".uuid"
data modify storage struct_anim:utils root.ctx.array_upsert.filter.name set from storage struct_anim:utils root.ctx.set_player_name.name

data modify storage struct_anim:utils root.ctx.array_upsert.value set from entity @s UUID

function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
