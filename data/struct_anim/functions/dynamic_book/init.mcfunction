#define storage struct_anim:dynbook "Dynamic book builder storage"

execute unless data storage struct_anim:dynbook root run data modify storage struct_anim:dynbook root.books set value []

function struct_anim:dynamic_book/soft_update