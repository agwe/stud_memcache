note
	description: "Summary description for {ITEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
class
	ITEM

create
	make
feature -- Initialization

-- maybe is better to make them local
	key: STRING
	value: STRING
	time: TIME

	make(a_key: STRING; a_value: STRING)
		require

			key_is_not_empty: not a_key.is_empty
			value_is_not_empty: not a_value.is_empty
		do
			key := a_key
			value := a_value
			create time.make_now
		ensure
			key_is_updated: key = a_key
			value_is_updated: value = a_value
		end
end
