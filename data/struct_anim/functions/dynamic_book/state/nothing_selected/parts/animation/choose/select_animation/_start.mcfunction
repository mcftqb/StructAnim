data modify storage struct_anim:utils root.return.animation.selection.result set value []
data modify storage struct_anim:utils root.args.animation.selection.options set from storage struct_anim:animations root.animations
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/select_animation/_step