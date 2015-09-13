note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_RETRIEVE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_TC04_GetData_Pass
		note
			testing:  "covers/{MEMCACHE}.retrieve"
		local
			memcache: MEMCACHE
			value: STRING
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			if attached memcache.retrieve ("key") as the_value  then
					value := the_value.value
					else
						value := "empty"
				end
			check
				value ~ "value"
			end
		end

	test_TC05_GetByFakeKey_Pass
		note
			testing:  "covers/{MEMCACHE}.retrieve"
		local
			memcache: MEMCACHE
			value: STRING
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key2", "value")
			if attached memcache.retrieve ("value") as the_value  then
					value := the_value.value
					else
						value := "empty"
				end
			check
				value ~ "empty"
			end

		end

		test_TC13_SearchData_Pass
		note
			testing:  "covers/{MEMCACHE}.search"
		local
			memcache: MEMCACHE
			if_exist: BOOLEAN
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			if_exist := memcache.search ("value")

			check
				if_exist ~ True
			end

		end

		test_TC16_CheckKey_Pass
		note
			testing:  "covers/{MEMCACHE}.if_exist"
		local
			memcache: MEMCACHE
			if_exist: BOOLEAN
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			if_exist := memcache.if_exist ("key")

			check
				if_exist ~ True
			end

		end

end


