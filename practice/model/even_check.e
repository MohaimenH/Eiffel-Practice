note
	description: "Summary description for {EVEN_CHECK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EVEN_CHECK

create
	make

feature
	remainder: INTEGER
feature
	make (value: INTEGER)
	do
		remainder := value \\ 2

		if remainder = 0 then
			print("It is an even number!%N")
		else
			print("It is not an even number!%N")
		end

	end

end
