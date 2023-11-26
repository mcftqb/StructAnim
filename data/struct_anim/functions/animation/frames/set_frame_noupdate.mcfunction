# Uses animator and animation selected
# Use score arg: #frames.current struct_anim.int

execute store result score #frames.count struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames

scoreboard players operation #frames.current struct_anim.int %= #frames.count struct_anim.int
execute unless score #frames.current struct_anim.int matches 0.. run scoreboard players operation #frames.current struct_anim.int += #frames.count struct_anim.int

execute store result storage struct_anim:animations root.animators[-1].frame int 1 run scoreboard players get #frames.current struct_anim.int
function struct_anim:animation/frames/_update_frame with storage struct_anim:animations root.animators[-1]