# on_frame_step uses args
execute unless data storage struct_anim:utils root.args.on_frame_step.callbacks[0] run return 0
data modify storage struct_anim:utils root.ctx.eval.callback set from storage struct_anim:utils root.args.on_frame_step.callbacks[0]
function struct_anim:utils/eval with storage struct_anim:utils root.ctx.eval
data remove storage struct_anim:utils root.args.on_frame_step.callbacks[0]
function struct_anim:animation/frames/callback/_run_callbacks