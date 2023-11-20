#define storage struct_anim:animations
#define storage struct_anim:animation_candidates

data modify storage struct_anim:animation_candidates root.animations append value {animation: "", author: "", frames_count: 0}
data modify storage struct_anim:animation_candidates root.animations[-1].name set string block ~ ~ ~ name 10
function struct_anim:animation/new/start/_make_name
data modify storage struct_anim:animation_candidates root.animations[-1].animation set from block ~ ~ ~ name
data modify storage struct_anim:animation_candidates root.animations[-1].author set from block ~ ~ ~ author

function struct_anim:animator/get_block_pos
data modify storage struct_anim:animation_candidates root.animations[-1].controller set from storage struct_anim:utils root.return.get_block_pos

function struct_anim:itemset/animation/new/area_marking/give_selected