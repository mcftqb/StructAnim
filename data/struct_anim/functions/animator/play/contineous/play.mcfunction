$execute unless data storage struct_anim:animations root.animators[{id: "$(id)", play: true}] run return 0

$function struct_anim:animator/play/step/next {id: "$(id)"}

$data modify storage struct_anim:schedule root.new.time set from storage struct_anim:animations root.animators[{id: "$(id)"}].interval
$data modify storage struct_anim:schedule root.new.callback set value 'function struct_anim:animator/play/contineous/play {id: "$(id)"}'
function struct_anim:macrosheduler/schedule