data modify block ~ ~ ~ posX set from storage struct_anim:animations root.animators[-1].placement.offset.x
data modify block ~ ~ ~ posY set from storage struct_anim:animations root.animators[-1].placement.offset.y
data modify block ~ ~ ~ posZ set from storage struct_anim:animations root.animators[-1].placement.offset.z

data modify block ~ ~ ~ sizeX set from storage struct_anim:animations root.animators[-1].placement.size.x
data modify block ~ ~ ~ sizeY set from storage struct_anim:animations root.animators[-1].placement.size.y
data modify block ~ ~ ~ sizeZ set from storage struct_anim:animations root.animators[-1].placement.size.z

function struct_anim:animator/convert/to_block
data modify block ~ ~ ~ mirror set from storage struct_anim:animations root.animators[-1].placement.mirror
data modify block ~ ~ ~ rotation set from storage struct_anim:animations root.animators[-1].placement.rotation
data modify block ~ ~ ~ seed set from storage struct_anim:animations root.animators[-1].placement.seed
data modify block ~ ~ ~ integrity set from storage struct_anim:animations root.animators[-1].placement.integrity

data modify block ~ ~ ~ name set from storage struct_anim:animations root.animators[-1].frame_name
