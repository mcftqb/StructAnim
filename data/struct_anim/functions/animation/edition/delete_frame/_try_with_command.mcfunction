scoreboard players reset #animation.delete_frame.has_command struct_anim.int
$execute store success score #animation.delete_frame.has_command struct_anim.int in $(Dimension) positioned $(x) $(y) $(z) run function struct_anim:animation/edition/delete_frame/_remove_command

function struct_anim:animation/edition/delete_frame/_delete_from_animation with storage struct_anim:animations root.animators[-1]

execute unless score #animation.delete_frame.has_command struct_anim.int matches 1 run function struct_anim:animation/edition/delete_frame/_no_command
execute if score #animation.delete_frame.has_command struct_anim.int matches 1 run function struct_anim:animation/edition/delete_frame/_has_command