note
	description: "Summary description for {MEMCACHE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MEMCACHE

create
	make

feature --Initialize
	cache_capacity: INTEGER
	current_cache_capacity: INTEGER
	storing_time: INTEGER
	search_strategy: SEARCHSTRATEGY
	item_table: HASH_TABLE[ITEM, STRING]
	item_list: ARRAYED_LIST[ITEM]
	frequency_of_use: FREQUENCY
	factory: FACTORYSEARCHSTRATEGY

	make(a_search_strategy: STRING; a_cache_capacity: INTEGER; a_storing_time: INTEGER)
	require
			--a_storing_time < 60
			--a_cache_capacity < 200
		do
			create item_list.make(10)
			create item_table.make(10)
			create factory.default_create
			create frequency_of_use.make
			search_strategy := factory.create_search_strategy (a_search_strategy)
			cache_capacity := a_cache_capacity
			storing_time := a_storing_time
			current_cache_capacity := 0
		end

feature --Basic features
	store(a_key: STRING; a_value: STRING):HASH_TABLE[ITEM, STRING]
	-- store some value with the key specified
		require
			item_table.has (a_key) = False
		local
			item: ITEM
		do
			if is_capacity_overloaded = True then
				delete_by_strategy
			end
			create item.make (a_key, a_value)
			item_table.put (item, a_key)
			item_list.extend (item)
			frequency_of_use.increment (item)
			current_cache_capacity := current_cache_capacity + 8*(a_key.capacity*2 + a_value.capacity)
			Result := item_table
		end

	retrieve(key: STRING): detachable ITEM
	-- get the data stored by the key specified
	-- this routine also deletes an item if its stroring time is elapsed
	-- yes, I know that this violates the cqrs principle and I'm sorry
		require
			not key.is_empty
		local
			item: ITEM
		do
			if attached item_table.item (key) as the_val  then
				item := the_val
				if is_time_elapsed(the_val) = True then
					delete(item.key)
					Result := Void
				else
					Result := item
				end
			else
				Result := Void
			end
		end

	search(value: STRING):BOOLEAN
	-- is the specified value stored in the library
	-- this routine also deletes an item if its stroring time is elapsed

		local
			res: BOOLEAN
			i: INTEGER
			item: ITEM
		do
			item := item_list.array_item (0)
			res := False
			from
				i:=0
			until
				i ~ item_list.count or res ~ True
			loop
				if item_list.array_item (i).value ~ value then
					item := item_list.array_item (i)
					res := True
				end
				i:=i+1
			end

			if is_time_elapsed(item) = True then
				delete(item.key)
				Result := False
			else
				Result := res
			end
		ensure
			Result = False or Result = True
		end

	delete(key: STRING)--:STRING
	-- delete an item with the key specified
		do
			if attached item_table.item (key) as the_val  then
					item_list.search (the_val)
					item_list.remove
				end
				item_table.remove (key)
			ensure
			item_table.has (key) = False
		end

	delete_all
	-- delete all stored items from the library
		require
			item_list /=Void
			item_table /= Void
		do
			item_table.wipe_out
			item_list.wipe_out
		ensure
			item_list.count ~ 0
			item_table.count ~ 0
		end

	if_exist(key:STRING): BOOLEAN
	-- does the library contain an item with the key specified

		do
			Result := item_table.has (key)
		ensure
			Result = False or Result = True
		end

feature {NONE} --Internal
	delete_by_strategy
	-- this procedure is used for searching an item for deleting based on a particular strategy
		require
		local
			item: ITEM
		do
			item := search_strategy.get_item (item_list, item_table)
			delete(item.key)
		ensure
		end

	is_time_elapsed(item: ITEM): BOOLEAN
	-- is the storing time elapsed for the specified item

		local
			current_time, temp: TIME
		do
			create current_time.make_now
			temp := item.time
			temp.minute_add (storing_time)
			Result := current_time.is_greater (temp)
		end

	is_capacity_overloaded: BOOLEAN
	-- is the capacity overloaded for the specified capacity
	do
		if current_cache_capacity/1000000 > cache_capacity then
			Result := True
		else
			Result := False
		end
	end

end
