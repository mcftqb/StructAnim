function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].reversed set value false
function struct_anim:animator/play/step/next with storage struct_anim:animations root.selected_animator
