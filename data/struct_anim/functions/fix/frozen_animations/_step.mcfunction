execute unless data storage struct_anim:utils root.args.fix.frozen_animation.values[0] run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.fix.frozen_animation.values[0]
function struct_anim:animator/get
data modify storage struct_anim:animations root.animators[-1].play set value false
function struct_anim:animator/play/contineous/play_start

data remove storage struct_anim:utils root.args.fix.frozen_animation.values[0]
function struct_anim:fix/frozen_animations/_step