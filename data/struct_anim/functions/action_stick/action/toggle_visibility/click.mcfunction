function struct_anim:animator/selection/get

function struct_anim:action_stick/action/toggle_visibility/_has_controller with storage struct_anim:animations root.animators[-1].controller

execute if score #animator.has_in_place struct_anim.int matches 1 run function struct_anim:animator/hide/run
execute unless score #animator.has_in_place struct_anim.int matches 1 run function struct_anim:animator/repair/run