function struct_anim:animator/selection/get

$data modify storage struct_anim:utils root.args.in.anim_params.interval set value "$(interval)"

data modify storage struct_anim:utils root.args.schedule.time set from storage struct_anim:utils root.args.in.anim_params.interval
function struct_anim:macrosheduler/parse_time
execute if score #schedule.parse_time.error struct_anim.int matches 1 run return 0
data remove storage struct_anim:utils root.args.schedule.time

data modify storage struct_anim:animations root.animators[-1].interval set from storage struct_anim:utils root.args.in.anim_params.interval

tellraw @s [{"text": "Animation(", "color": "gold"}, {"nbt":"root.animators[-1].id", "storage": "struct_anim:animations"}, ").interval successfully set to ", {"nbt":"root.animators[-1].interval", "storage": "struct_anim:animations", "bold": true}]