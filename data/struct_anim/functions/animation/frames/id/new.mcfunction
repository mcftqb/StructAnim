execute if data storage struct_anim:animations root.animations[-1].last_frame_id run function struct_anim:animation/frames/id/_add

# If no id, start from frames count
execute unless data storage struct_anim:animations root.animations[-1].last_frame_id run execute store result storage struct_anim:animations root.animations[-1].last_frame_id int 1 run data get storage struct_anim:animations root.animations[-1].frames
