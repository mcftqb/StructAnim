schedule clear struct_anim:macrosheduler/_run_scheduled/start
data modify storage struct_anim:schedule root.list set value []

data modify storage struct_anim:utils root.args.fix.frozen_animation.values set value []
data modify storage struct_anim:utils root.args.fix.frozen_animation.values append from storage struct_anim:animations root.animators[{play: true}].id
function struct_anim:fix/frozen_animations/_step