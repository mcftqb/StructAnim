# uses selected player

data modify storage struct_anim:dynbook root.books append value {pages: [], parts: {}, title:"Structures Animator", author:"", description:""}
data modify storage struct_anim:dynbook root.books[-1].player set from storage struct_anim:id root.players[-1].name
