# get_frame_name uses selected animator [-1] and context
# {animation: str, frames_count: int}
$data modify storage struct_anim:animations root.animations[-1].frames append value "$(animation)/frame_$(last_frame_id)"