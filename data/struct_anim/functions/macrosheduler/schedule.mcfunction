# params: time: (1t | 2s | 3d), callback: str to execute

function struct_anim:macrosheduler/_calc_timestamp
function struct_anim:macrosheduler/_store_callback with storage struct_anim:schedule root.new
function struct_anim:macrosheduler/_schedule with storage struct_anim:schedule root.new
data remove storage struct_anim:schedule root.new