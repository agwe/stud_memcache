note
	description: "Summary description for {TEST_INITIALIZATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_INITIALIZATION
inherit
	EQA_TEST_SET

feature -- Test routines
	test_TC17_Initialize_Pass
		local
			memcache: MEMCACHE
			a_cache_capacity: INTEGER_32
			a_store_time: INTEGER_32
		do
			create memcache.make ("fifo", 10, 70)
			a_cache_capacity := memcache.cache_capacity
			a_store_time := memcache.storing_time
			check
				a_cache_capacity ~ 10
				a_store_time ~ 70
			end
	end

	test_TC12_CheckLessUsed
		local
			memcache: MEMCACHE
			table: HASH_TABLE[ITEM, STRING]
			value: STRING
		do
			create memcache.make ("less_used", 1, 1)
			table := memcache.store ("key", "value")
			table := memcache.store ("key2", "value")
			if attached (memcache.retrieve ("key")) as the_val then
				value := the_val.value
				else
					value := "empty"
			end
			if attached (memcache.retrieve ("key2")) as the_val then
				value := the_val.value
				else
					value := "empty"
			end
			check
				value ~ "key"
			end
	end
end
