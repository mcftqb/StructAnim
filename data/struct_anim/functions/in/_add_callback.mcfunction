function struct_anim:animator/selection/get
$data modify storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path) append from storage struct_anim:utils root.ctx.input.add_callback.callback
function #struct_anim:callbacks/group