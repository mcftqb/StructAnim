$data modify storage struct_anim:dynbook root.books[-1].pages append value '["",{"nbt":"$(this_book).parts.page[$(page_num)][]", "storage":"struct_anim:dynbook", "separator":"\\n\\n", "interpret":"true"}]'