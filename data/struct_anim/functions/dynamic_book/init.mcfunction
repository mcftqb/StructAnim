#define storage struct_anim:dynbook "Dynamic book builder storage"

execute unless data storage struct_anim:dynbook root run data modify storage struct_anim:dynbook root.book merge value {title:"Structures Animator", author:"", description:"", pages:[]}

function struct_anim:dynamic_book/soft_update