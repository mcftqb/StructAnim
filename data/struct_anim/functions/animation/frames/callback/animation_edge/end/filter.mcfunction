scoreboard players set #animation.frame_callbacks.is_end struct_anim.int 0
function struct_anim:animation/search/animation_by_selection

execute store result score #detect_edge_frame.last_frame struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames
scoreboard players remove #detect_edge_frame.last_frame struct_anim.int 1
execute store result score #detect_edge_frame.frame struct_anim.int run data get storage struct_anim:animations root.animators[-1].frame

execute store success score #animation.frame_callbacks.is_end struct_anim.int if score #detect_edge_frame.last_frame struct_anim.int = #detect_edge_frame.frame struct_anim.int
