function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get
$data modify storage struct_anim:animations root.suggestions[-1].animations.animation set value "$(value)"
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/choose