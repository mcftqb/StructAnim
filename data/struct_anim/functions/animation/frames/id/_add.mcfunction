execute store result score #frame.id.last struct_anim.int run data get storage struct_anim:animations root.animations[-1].last_frame_id
scoreboard players add #frame.id.last struct_anim.int 1
execute store result storage struct_anim:animations root.animations[-1].last_frame_id int 1 run scoreboard players get #frame.id.last struct_anim.int