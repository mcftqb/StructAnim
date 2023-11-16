# select_suggestion uses selected player

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/prefill
data modify storage struct_anim:utils root.ctx.array_upsert set from storage struct_anim:utils root.ctx.array_select
data modify storage struct_anim:utils root.ctx.array_upsert merge value {value_path:".callback", value: {type: "step", path: "ongoing", buffer: {}}}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.player_id set from entity @s UUID
function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
