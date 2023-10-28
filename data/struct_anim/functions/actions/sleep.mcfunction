function struct_anim:actions/pause

$data modify storage struct_anim:utils root.args.schedule.time set value "$(time)"
data modify storage struct_anim:utils root.args.schedule.callback.function set value 'function struct_anim:animator/play/contineous/play_by_id'
data modify storage struct_anim:utils root.args.schedule.callback.args.id set from storage struct_anim:animations root.animators[-1].id
function struct_anim:macrosheduler/schedule