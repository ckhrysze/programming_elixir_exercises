defmodule MyEnumTest do
	use ExUnit.Case

	test "false when empty" do
		assert MyEnum.any?([], fn()->true end) == false
	end
end
