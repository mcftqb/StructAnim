data modify storage struct_anim:dynbook book.pages set value []

data modify storage struct_anim:dynbook book.title set value "Structures Animator: Quickstart"
data modify storage struct_anim:dynbook book.description set value "Use me after you finish animation area selection"

function struct_anim:id/player/get_name
function struct_anim:animation/search/candidate_by_author with storage struct_anim:id search
function struct_anim:dynamic_book/state/quickstart/_make_page with storage struct_anim:animation_condidates search.animation.controller

function struct_anim:dynamic_book/give
