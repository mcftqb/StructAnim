# convert_place_to_block uses selected animator (placement: {mirror: str, rotation: str})
# Overwrites args with return result

execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "counterclockwise_90"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "COUNTERCLOCKWISE_90"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "180"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "CLOCKWISE_180"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "clockwise_90"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "CLOCKWISE_90"
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "none"} run data modify storage struct_anim:animations root.animators[-1].placement.rotation set value "NONE"
# 180 don't require tranformation as well as already transformed values

execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "front_back"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "FRONT_BACK"
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "left_right"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "LEFT_RIGHT"
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "none"} run data modify storage struct_anim:animations root.animators[-1].placement.mirror set value "NONE"
# already transformed values don't require tranformation
