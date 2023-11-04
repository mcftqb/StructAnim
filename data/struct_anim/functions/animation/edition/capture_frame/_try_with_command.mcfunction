scoreboard players reset #animation.capture_frame.has_command struct_anim.int
$execute store success score #animation.capture_frame.has_command struct_anim.int in $(Dimension) positioned $(x) $(y) $(z) run function struct_anim:animation/edition/capture_frame/_save_command

execute store result score #animation.capture_frame.num struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames
scoreboard players remove #animation.capture_frame.num struct_anim.int 1

execute unless score #animation.capture_frame.has_command struct_anim.int matches 1 run function struct_anim:animation/edition/capture_frame/_no_command
execute if score #animation.capture_frame.has_command struct_anim.int matches 1 run function struct_anim:animation/edition/capture_frame/_has_command