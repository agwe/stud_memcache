note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_STORE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_TC01_Store_Pass
		note
			testing:  "covers/{MEMCACHE}.store"
		local
			memcache: MEMCACHE
			count: INTEGER_32
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("value", "key")
			count := memcache.item_table.count
		check
			count ~ 1
		end
		end

	test_TC02_Store_duplicated_keys_Fail
		note
			testing:  "covers/{MEMCACHE}.store"
		local
			memcache: MEMCACHE
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("key", "value")
			table := memcache.store ("key", "value")
		check

		end
		end

test_TC03_Store_empty_key_Fail
		note
			testing:  "covers/{MEMCACHE}.store"
		local
			memcache: MEMCACHE
			table: HASH_TABLE[ITEM, STRING]
		do
			create memcache.make ("fifo", 10, 70)
			table := memcache.store ("", "value")
		check

		end
		end

end


