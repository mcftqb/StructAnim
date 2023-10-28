execute store result score #action.to_end.last_frame struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames_count
scoreboard players remove #action.to_end.last_frame struct_anim.int 1
execute store result storage struct_anim:animations root.animators[-1].frame int 1 run scoreboard players get #action.to_end.last_frame struct_anim.int