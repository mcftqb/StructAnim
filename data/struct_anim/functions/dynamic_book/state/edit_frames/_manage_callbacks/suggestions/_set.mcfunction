# select_suggestion uses selected player

data modify storage struct_anim:utils root.ctx.array_upsert set value {storage: "struct_anim:animations", path: "root.suggestions", filter: {}, value_path:".callback", value: {type: "step", path: "ongoing", last_command: ""}}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.player set from storage struct_anim:id root.players[-1].name
function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
