execute unless data storage struct_anim:animation_condidates root run data modify storage struct_anim:animations root set value {}
execute unless data storage struct_anim:animations root run data modify storage struct_anim:animations root set value {}

data modify storage struct_anim:animations root.ctx.array_select.animators set value {storage: "struct_anim:animations", path: "root.animators", filter: {}}

schedule function struct_anim:animation/locate_nearby/run 1s replace