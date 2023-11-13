execute unless data storage struct_anim:utils root.args.animation.deletion.frames[0] run return 0

data modify storage struct_anim:utils root.args.animation.deletion.frame set from storage struct_anim:utils root.args.animation.deletion.frames[0]
execute store success score #animation.deletion.frames.remove_success struct_anim.int run function struct_anim:animation/delete/_delete_frames/_remove_command with storage struct_anim:utils root.args.animation.deletion
scoreboard players operation #animation.deletion.frames.count struct_anim.int -= #animation.deletion.frames.remove_success struct_anim.int

data remove storage struct_anim:utils root.args.animation.deletion.frames[0]
function struct_anim:animation/delete/_delete_frames/_step