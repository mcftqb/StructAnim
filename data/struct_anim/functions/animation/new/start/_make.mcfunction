#define storage struct_anim:animations
#define storage struct_anim:animation_condidates

function struct_anim:animation/new/start/_make_name

data modify storage struct_anim:animation_condidates root.animations prepend value {animation: "", author: ""}
data modify storage struct_anim:animation_condidates root.animations[0].animation set from block ~ ~ ~ name
data modify storage struct_anim:animation_condidates root.animations[0].author set from block ~ ~ ~ author
data modify storage struct_anim:animation_condidates root.animations[0].controller.x set from block ~ ~ ~ x
data modify storage struct_anim:animation_condidates root.animations[0].controller.y set from block ~ ~ ~ y
data modify storage struct_anim:animation_condidates root.animations[0].controller.z set from block ~ ~ ~ z

function struct_anim:itemset/animation/new/area_marking/give with storage struct_anim:animation_condidates root.animations[0]