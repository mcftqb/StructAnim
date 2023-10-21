data modify storage struct_anim:animations root.animators prepend value {id: "", animation: "", placement: {mirror: "none", rotate: "none", integrity: 1.0f, seed: 0}, frame: 0, step: 1, interval: "1s", play: false, reversed: false}
data modify storage struct_anim:animations root.animators[0].animation set from storage struct_anim:animation_condidates root.search.animation.animation

execute store result storage struct_anim:animations root.animator.num int 1 run data get storage struct_anim:animations root.animators
data modify storage struct_anim:animations root.animator.animation set from storage struct_anim:animations root.animators[0].animation

function struct_anim:animator/_new with storage struct_anim:animations root.animator

data modify storage struct_anim:animations root.selected_animator.id set from storage struct_anim:animations root.animators[0].id
function struct_anim:animator/selection/set