function struct_anim:animator/lock/unset
execute unless data storage struct_anim:animations root.animators[-1].placement{mirror: "NONE"} run function struct_anim:animator/lock/set
execute unless data storage struct_anim:animations root.animators[-1].placement{rotation: "NONE"} run function struct_anim:animator/lock/set