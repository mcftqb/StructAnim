# get_candidate_animation uses selected player
data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:animation_condidates", path: "root.animations", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.author set from storage struct_anim:id root.players[-1].name
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select
