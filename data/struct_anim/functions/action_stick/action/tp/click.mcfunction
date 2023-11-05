function struct_anim:animator/selection/get

function struct_anim:action_stick/action/tp/_has_nearby with storage struct_anim:animations root.animators[-1]

execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:animation/tp/to_last_pos
execute unless score #animator.discover.success struct_anim.int matches 1 run function struct_anim:animation/tp/to_controller