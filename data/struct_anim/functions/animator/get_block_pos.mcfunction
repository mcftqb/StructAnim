# get_block_pos returns {x: int, y: int, z: int, Dimension: str}
# Uses BlockEntity at ~ ~ ~ and any nearest entity

data modify storage struct_anim:utils root.return.get_block_pos.x set from block ~ ~ ~ x
data modify storage struct_anim:utils root.return.get_block_pos.y set from block ~ ~ ~ y
data modify storage struct_anim:utils root.return.get_block_pos.z set from block ~ ~ ~ z
data modify storage struct_anim:utils root.return.get_block_pos.Dimension set from entity @p[limit=1] Dimension