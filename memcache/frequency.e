note
	description: "Summary description for {FREQUENCY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FREQUENCY
create
	make

feature --Initialization
	frequency_of_use: HASH_TABLE[INTEGER, STRING]

	make
	do
		create frequency_of_use.make (100)
	end

feature --Basic features
	increment(an_item: ITEM)
	-- increment a quantity of usage if the item was searched or retrieved
	require
		frequency_of_use.has_key (an_item.key) = False
	local
		i: INTEGER
	do
		i := frequency_of_use.item (an_item.key)
		frequency_of_use.replace (i+1, an_item.key)
	ensure
		--frequency_of_use.item (an_item.key) = old frequency_of_use.item (an_item.key) + 1
	end


	get_frequency(an_item: ITEM): INTEGER
	-- return frequency for each element.
	require
	-- frequency can't be null, because shall be inicialize when the element puts to the memory

		frequency_of_use.has_key (an_item.key) = True
	do
		Result := frequency_of_use.item (an_item.key)
	ensure
	-- we return what we have to return
		Result = frequency_of_use.item (an_item.key)
	end

end
