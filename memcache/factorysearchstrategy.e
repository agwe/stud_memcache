note
	description: "Summary description for {FACTORYSEARCHSTRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FACTORYSEARCHSTRATEGY
create
	default_create
feature -- Initialization

feature -- Set strategy
	create_search_strategy(a_search_strategy: STRING): SEARCHSTRATEGY
		require
			--search_strategy_exist: a_search_strategy ~ "fifo" or a_search_strategy ~ "lifo" or a_search_strategy ~ "less_used"
		local
			fifo: FIFO
			lifo: LIFO
			less_used: LESSUSED
			frequency: FREQUENCY
		do
			if a_search_strategy ~ "fifo"
			then
				create fifo
				Result := fifo
			elseif a_search_strategy ~ "lifo" then
				create lifo
				Result := lifo
			elseif a_search_strategy ~ "less_used" then
				create frequency.make
				create less_used.make(frequency)
				Result := less_used
			else
				create fifo
				Result := fifo
			end
		end
end
