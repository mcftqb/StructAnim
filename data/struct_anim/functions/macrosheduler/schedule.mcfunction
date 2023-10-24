# schedule uses args:
# time: str double+(t|s|d)
# callback: {function: str executable, args: any}

function struct_anim:macrosheduler/_calc_timestamp
function struct_anim:macrosheduler/_store_callback with storage struct_anim:utils root.args.schedule
function struct_anim:macrosheduler/_schedule with storage struct_anim:utils root.args.schedule