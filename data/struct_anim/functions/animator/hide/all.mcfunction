data modify storage struct_anim:utils root.args.animator.hide.all.values set value []
data modify storage struct_anim:utils root.args.animator.hide.all.values append from storage struct_anim:animations root.animators[].id
function struct_anim:animator/hide/_step