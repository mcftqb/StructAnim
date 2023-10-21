# storage struct_anim:animations root.frame.placement must be set from animator before processing
$data modify storage struct_anim:animations root.frame.placement.frame set from storage struct_anim:animations root.animations[{animation: "$(animation)"}].frames[$(frame)]
function struct_anim:animation/frames/_place with storage struct_anim:animations root.frame.placement