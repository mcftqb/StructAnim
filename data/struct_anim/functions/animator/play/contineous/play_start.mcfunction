data modify storage struct_anim:animations root.animators[-1].play set value true
data modify storage struct_anim:animations root.animators[-1].just_started set value true

data modify storage struct_anim:utils root.args.schedule_callback.args set value {}
data modify storage struct_anim:utils root.args.schedule_callback.args.id set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/play/contineous/play_step

data remove storage struct_anim:animations root.animators[-1].just_started