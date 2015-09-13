note
	description: "Summary description for {LESSUSED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LESSUSED
	inherit SEARCHSTRATEGY
create
	make
feature
	frequency_of_use : FREQUENCY
	make(a_frequency_of_use: FREQUENCY)

		do
			frequency_of_use := a_frequency_of_use
		end

	get_item(item_list: ARRAYED_LIST[ITEM]; item_table: HASH_TABLE[ITEM, STRING]): ITEM

		local
			i, max, temp: INTEGER
			item, temp_item: ITEM
		do
			item := item_list.at (0)
			max := 0
			from
				i := 0
			until
				i < item_list.count
			loop
				temp_item := item_list.at (i)
				temp := frequency_of_use.get_frequency (temp_item)
				if temp > max then
					max := temp
					item := temp_item
				end
				i := i+1
			end
			Result := item
		end
end
