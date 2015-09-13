note
	description: "Summary description for {SEARCHSTRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SEARCHSTRATEGY

feature
	get_item(item_list: ARRAYED_LIST[ITEM]; item_table: HASH_TABLE[ITEM, STRING]): ITEM

		deferred
		end
end
