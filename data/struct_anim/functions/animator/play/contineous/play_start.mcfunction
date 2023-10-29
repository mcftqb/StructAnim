execute store success score #animator.play_start.playing struct_anim.int run data modify storage struct_anim:animations root.animators[-1].play set value true
execute unless score #animator.play_start.playing struct_anim.int matches 1 run return 0

data modify storage struct_anim:animations root.animators[-1].just_started set value true

data modify storage struct_anim:utils root.args.schedule_callback.args set value {}
data modify storage struct_anim:utils root.args.schedule_callback.args.id set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/play/contineous/play_step

data remove storage struct_anim:animations root.animators[-1].just_started