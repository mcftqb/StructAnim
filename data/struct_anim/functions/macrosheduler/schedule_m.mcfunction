# params: time: (1t | 2s | 3d), callback: str to execute

$data modify storage struct_anim:schedule root.new.time set value "$(time)"
$data modify storage struct_anim:schedule root.new.callback set value "$(callback)"
function struct_anim:macrosheduler/schedule