note
	description: "[
		Test examples with arrays and regular expressions.
		First test fails as Result is False by default.
		Write your own tests.
		Included libraries:
			base and extension
			Espec unit testing
			Mathmodels
			Gobo structures
			Gobo regular expressions
		]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision 19.05$"

class
	TEST_EXAMPLE

inherit

	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			add_boolean_case (agent t0)
			add_boolean_case (agent t1)
		end

feature -- tests

	t0: BOOLEAN

		local
			evenNum: EVEN_CHECK
		do
			comment ("t0: First test case with even number")
			create {EVEN_CHECK} evenNum.make (26)
			Result := evenNum.remainder = 0
		end

	t1: BOOLEAN

		local
			oddNum: EVEN_CHECK
		do
			comment ("t1: Second test case with odd number")
			create {EVEN_CHECK} oddNum.make (19)
			Result := oddNum.remainder /= 0

		end

end
