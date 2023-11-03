# animator_repair uses selected animator

data modify storage struct_anim:utils root.ctx.animator_repair set from storage struct_anim:animations root.animators[-1].controller

data modify storage struct_anim:utils root.ctx.animator_repair.mode set value "save"
execute if data storage struct_anim:animations root.animators[-1].copy_of run data modify storage struct_anim:utils root.ctx.animator_repair.mode set value "load"

function struct_anim:animator/repair/_repair with storage struct_anim:utils root.ctx.animator_repair
