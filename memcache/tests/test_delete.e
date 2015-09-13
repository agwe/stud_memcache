note
	description: "Summary description for {TEST_DELETE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DELETE

inherit
	EQA_TEST_SET

feature -- Test routines
	test_TC06_DeleteData
		note
			testing:  "covers/{MEMCACHE}.delete"
		local
			memcache: MEMCACHE
			value: STRING
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			memcache.delete ("key")
			if attached memcache.retrieve ("key") as the_value  then
					value := the_value.value
					else
						value := "empty"
				end
			check
				value ~ "empty"
			end
		end

	test_TC07_DeleteByFakeKey
		note
			testing:  "covers/{MEMCACHE}.delete"
		local
			memcache: MEMCACHE
			value: STRING
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			memcache.delete ("key2")
			if attached memcache.retrieve ("key") as the_value  then
					value := the_value.value
					else
						value := "empty"
				end
			check
				value ~ "value"
			end

		end

		test_TC08_DeleteAllData
		note
			testing:  "covers/{MEMCACHE}.delete_all"
		local
			memcache: MEMCACHE
			value: STRING
			table: HASH_TABLE[ITEM, STRING]
			count_list: INTEGER_32
			count_table: INTEGER_32
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			table := memcache.store ("key2", "value")
			memcache.delete_all
			count_list := memcache.item_list.count
			count_table := memcache.item_table.count
			check
				count_list ~ 0
				count_table ~ 0
			end

		end
end
