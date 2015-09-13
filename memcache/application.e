note
	description : "Cache application future test class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	memcache: MEMCACHE
	a_search_strategy: STRING
	a_cache_capacity: INTEGER_32
	a_storing_time: INTEGER_32
	make
		do
			print("%N")
			print ("Hello, dear MemCache user!%N")

			print ("Please, enter a search strategy (fifo, lifo or lessused)%N")
			io.read_line
			a_search_strategy := io.last_string

			print ("Please, enter a cache capacity (5-100 mb)%N")
			io.read_line
			a_cache_capacity := io.last_string.to_integer

			print ("Please, enter a storing time (15-60 min)%N")
			io.read_line
			a_storing_time := io.last_string.to_integer

			create memcache.make (a_search_strategy, a_cache_capacity, a_storing_time)

		end

end
