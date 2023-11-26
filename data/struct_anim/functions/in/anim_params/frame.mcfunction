function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection

$scoreboard players set #frames.current struct_anim.int $(frame)
function struct_anim:animation/frames/set_frame

tellraw @s [{"text": "Animation(", "color": "gold"}, {"nbt":"root.animators[-1].id", "storage": "struct_anim:animations","font": "uniform","bold": true}, ").frame successfully set to ", {"nbt":"root.animators[-1].frame", "storage": "struct_anim:animations", "bold": true, "hoverEvent": {"action": "show_text","value": {"nbt":"root.animators[-1].frame_name", "storage": "struct_anim:animations", "color": "gold"}}}]