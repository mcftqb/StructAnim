# Executes as player
data modify storage struct_anim:dynbook root.books append value {pages: [], parts: {}, title:"Structures Animator", author:"", description:""}
data modify storage struct_anim:dynbook root.books[-1].player_id set from entity @s UUID
