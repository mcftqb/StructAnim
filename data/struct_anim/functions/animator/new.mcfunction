# Uses selected animation & candidate
data modify storage struct_anim:animations root.animators append value {id: "", animation: "", placement: {mirror: "none", rotation: "none", integrity: 1.0f, seed: 0}, frame: 0, step: 1, interval: "1s", play: false, reversed: false}
data modify storage struct_anim:animations root.animators[-1].controller set from storage struct_anim:animation_condidates root.animations[-1].controller
data remove storage struct_anim:animations root.animations[-1].controller
data modify storage struct_anim:animations root.animators[-1].animation set from storage struct_anim:animation_condidates root.animations[-1].animation

function struct_anim:animator/_make_id
function struct_anim:animator/mark/run

data modify storage struct_anim:utils root.args.select_animator.animator set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/selection/set