execute unless data storage struct_anim:animations root.animations[-1].defaults run data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.defaults set value '{"text": "No defaults", "color": "red"}'
execute unless data storage struct_anim:animations root.animations[-1].defaults run return 0

function struct_anim:dynamic_book/state/edit_frames/parts/animation/defaults/make_direction
function struct_anim:dynamic_book/state/edit_frames/parts/animation/defaults/make_callbacks
data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.defaults set from storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext._defaults
