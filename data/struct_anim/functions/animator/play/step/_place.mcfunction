$data modify storage struct_anim:animations root.frame.placement set from storage struct_anim:animations root.animators[{id: "$(id)"}].placement
$function struct_anim:animation/frames/place with storage struct_anim:animations root.animators[{id: "$(id)"}]