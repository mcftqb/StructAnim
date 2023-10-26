# convert_place_to_block uses selected animator (placement: {mirror: str, rotation: str})
# Overwrites args with return result

execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "COUNTERCLOCKWISE_90"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "counterclockwise_90"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "CLOCKWISE_180"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "180"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "CLOCKWISE_90"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "clockwise_90"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "NONE"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "none"
# 180 don't require tranformation as well as already transformed values

execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "FRONT_BACK"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "front_back"
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "LEFT_RIGHT"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "left_right"
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "NONE"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "none"
# already transformed values don't require tranformation
