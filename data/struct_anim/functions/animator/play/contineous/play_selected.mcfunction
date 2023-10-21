function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].play set value true
function struct_anim:animator/play/contineous/play with storage struct_anim:animations root.selected_animator