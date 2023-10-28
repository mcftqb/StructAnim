function struct_anim:animation/search/animation_by_selection

execute store result score #detect_edge_frame.last_frame struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames_count
scoreboard players remove #detect_edge_frame.last_frame struct_anim.int 1
execute store result score #detect_edge_frame.frame struct_anim.int run data get storage struct_anim:animations root.animators[-1].frame

execute if score #detect_edge_frame.frame struct_anim.int matches 0 run function #struct_anim:callbacks/animation_edge/start/any
execute if score #detect_edge_frame.frame struct_anim.int = #detect_edge_frame.last_frame struct_anim.int run function #struct_anim:callbacks/animation_edge/end/any
