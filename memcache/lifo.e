note
	description: "Summary description for {LIFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LIFO inherit SEARCHSTRATEGY
feature --Basic functions
	get_item(item_list: ARRAYED_LIST[ITEM]; item_table: HASH_TABLE[ITEM, STRING]): ITEM
		do
			Result := item_list.last
		end

end
