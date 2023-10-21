data modify storage struct_anim:animations root.edition_ctx set from storage struct_anim:animations root.animations[-1].controller
data modify storage struct_anim:animations root.edition_ctx.frame set from storage struct_anim:animations root.frame.placement.frame
function struct_anim:animation/edition/step/_prefill with storage struct_anim:animations root.edition_ctx
