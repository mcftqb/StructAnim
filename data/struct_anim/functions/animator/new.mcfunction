data modify storage struct_anim:animations animators prepend value {id: "", animation: "", placement: {mirror: "none", rotate: "none", integrity: 1.0f, seed: 0}, frame: 0, step: 1, interval: "1s", play: false, reversed: false}
data modify storage struct_anim:animations animators[0].animation set from storage struct_anim:animation_condidates search.animation.animation

execute store result storage struct_anim:animations animator.num int 1 run data get storage struct_anim:animations animators
data modify storage struct_anim:animations animator.animation set from storage struct_anim:animations animators[0].animation

function struct_anim:animator/_new with storage struct_anim:animations animator

data modify storage struct_anim:animations selected_animator.id set from storage struct_anim:animations animators[0].id
function struct_anim:animator/selection/set