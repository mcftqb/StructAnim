# animator_contineous_play uses args from schedule_callback
# (id: str)
data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.schedule_callback.args.id
function struct_anim:animator/get
function struct_anim:animation/search/animation_by_selection

execute store result score #animator_contineous_play.playing struct_anim.int run data get storage struct_anim:animations root.animators[-1].play
execute unless score #animator_contineous_play.playing struct_anim.int matches 1 run return 0

data modify storage struct_anim:utils root.args.animator_next_frame.id set from storage struct_anim:utils root.args.schedule_callback.args.id
function struct_anim:animator/play/step/next

data modify storage struct_anim:utils root.args.schedule.time set from storage struct_anim:animations root.animators[-1].interval
data modify storage struct_anim:utils root.args.schedule.callback.function set value 'function struct_anim:animator/play/contineous/play'
data modify storage struct_anim:utils root.args.schedule.callback.args set from storage struct_anim:utils root.args.schedule_callback.args
function struct_anim:macrosheduler/schedule