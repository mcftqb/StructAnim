function struct_anim:id/generate
data modify storage struct_anim:utils root.ctx.make_animator_id.id set from storage struct_anim:utils root.return.id_to_str.all.result
function struct_anim:animation/search/animation_by_selection
data modify storage struct_anim:utils root.ctx.make_animator_id.animation set from storage struct_anim:animations root.animations[-1].name
function struct_anim:animator/_new with storage struct_anim:utils root.ctx.make_animator_id