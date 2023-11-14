# select_suggestion uses selected player

data modify storage struct_anim:utils root.ctx.array_upsert set value {storage: "struct_anim:animations", path: "root.suggestions", filter: {}, value_path:".callback", value: {type: "step", path: "ongoing", buffer: {}}}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.player_id set from entity @s UUID
function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
