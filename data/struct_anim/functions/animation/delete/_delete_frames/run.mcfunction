data modify storage struct_anim:utils root.args.animation.deletion.frames set from storage struct_anim:animations root.animations[-1].frames
execute store result score #animation.deletion.frames.count struct_anim.int run data get storage struct_anim:utils root.args.animation.deletion.frames
function struct_anim:animation/delete/_delete_frames/_step

execute if score #animation.deletion.frames.count struct_anim.int matches 0 run function struct_anim:animation/delete/_delete_frames/_success
execute unless score #animation.deletion.frames.count struct_anim.int matches 0 run function struct_anim:animation/delete/_delete_frames/_requires_action