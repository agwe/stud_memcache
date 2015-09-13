note
	description: "Summary description for {FIFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FIFO inherit SEARCHSTRATEGY
	create
	default_create
feature --Basic features
	get_item(item_list: ARRAYED_LIST[ITEM]; item_table: HASH_TABLE[ITEM, STRING]): ITEM
		do
			Result := item_list.at (0)
		end

end
