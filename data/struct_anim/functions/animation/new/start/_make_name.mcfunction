data modify storage struct_anim:id root.search.name set from block ~ ~ ~ author
function struct_anim:id/player/get_id with storage struct_anim:id root.search
# animation name
data modify storage struct_anim:id root.search.name set string block ~ ~ ~ name 10
function struct_anim:animation/new/start/__make_name with storage struct_anim:id root.search