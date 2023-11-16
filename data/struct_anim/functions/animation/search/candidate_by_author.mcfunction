# get_candidate_animation uses selected player
function struct_anim:animation/search/candidates_prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.author set from storage struct_anim:id root.players[-1].name
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select
