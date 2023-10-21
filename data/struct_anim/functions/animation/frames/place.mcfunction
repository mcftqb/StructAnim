# storage struct_anim:animations frame.placement must be set from animator before processing
$data modify storage struct_anim:animations frame.placement.frame set from storage struct_anim:animations animations[{animation: "$(animation)"}].frames[$(frame)]
function struct_anim:animation/frames/_place with storage struct_anim:animations frame.placement