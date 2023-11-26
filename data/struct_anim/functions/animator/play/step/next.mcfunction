# Uses selected animator and animation

function struct_anim:animation/frames/get_frame

execute store result score #frames.is_reversed struct_anim.int run data get storage struct_anim:animations root.animators[-1].reversed
execute unless score #frames.is_reversed struct_anim.int matches 1 store result score #frames.step struct_anim.int run data get storage struct_anim:animations root.animators[-1].step 1
execute if score #frames.is_reversed struct_anim.int matches 1 store result score #frames.step struct_anim.int run data get storage struct_anim:animations root.animators[-1].step -1

scoreboard players operation #frames.current struct_anim.int += #frames.step struct_anim.int

function struct_anim:animation/frames/set_frame