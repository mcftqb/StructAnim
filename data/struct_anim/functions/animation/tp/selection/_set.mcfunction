# Executes as player
data modify storage struct_anim:animations root.last_positions append value {}
data modify storage struct_anim:animations root.last_positions[-1].player_id set from entity @s UUID
